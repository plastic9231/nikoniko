package board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
// import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.action.CommandAction;


// @WebServlet("/ControllerAction")
public class ControllerAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 명렁어와 명령어 처리클래스를 쌍으로 저장
	private HashMap<String, Object> commandMap = new HashMap<String, Object>();
		
		/*
		 * 	명령어의 처리클래스가 매핑되어 있는 CommandMVC.properties 파일을 읽어와서
		 * 	Map 객체인 commandMap객체 저장함
		 * 
		 *  명령어의 처리클래스 매핑되어 있는 properties 파일은
		 *  CommandMVC.properties 파일이다.
		 */

	
	public void init(ServletConfig config) throws ServletException {
		// web.xml 파일에서 propertyConfig에 해당하는 초기파라미터 값을 읽어옴
		
		String props = config.getInitParameter("proConfig");
		// 매핑정보를 저장할 properties 객체를 생성
		Properties pr = new Properties();
		
		String path = config.getServletContext().getRealPath("/WEB-INF");
		
		FileInputStream f = null;
		
		try {
			// CommandMVC.proprties 파일의 내용을 읽어옴
			f = new FileInputStream(new File(path, props));
			
			// CommandMVC.properties 파일의 정보를 properties 객체에 저장
			pr.load(f);
			
		}catch(IOException il) {
			throw new ServletException(il);
		}finally {
			if(f!=null) 
			try{
				f.close();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		// Iterator 객체를 이용하여 키 값만 저장한다.
		Iterator<Object> keyIter = pr.keySet().iterator();
		
		// 명령어 처리클래스(객체)를 하나씩 꺼내서 그 객체명으로 properties 객체 저장된 객체에 접근한다.
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();
			String className = pr.getProperty(command);
			
			// 해당 문자열을 이용하여 클래스를 만듬
			try {
				Class commandClass = Class.forName(className);
	
				// 해당 클래스의 객체를 생성함
				Object commandInstance = commandClass.newInstance();
				
				// Map객체인 commmandMap에 객체를 저장
				commandMap.put(command, commandInstance);
				
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch(InstantiationException e) {
				throw new ServletException(e);
			}catch(IllegalAccessException e) {
				throw new ServletException(e);
			}
		}	
	} // end init

	// get 방식 메소드 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		requestPro(request, response);
	}

	// post 방식 메소드 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		requestPro(request, response);
	}
	
	// 사용자의 요청을 분석해서 해당 작업을 처리하는 메소드
	protected void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = null;
		CommandAction com = null;
		
		try {
			String command = request.getRequestURI();
			
			if(command!=null) {
				command = command.substring(request.getContextPath().length());

			}
			com = (CommandAction)commandMap.get(command);
			view = com.requestPro(request, response);
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
