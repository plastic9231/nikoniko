package join.action;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.action.CommandAction;
import join.model.memberDAO;
import join.model.memberVO;

public class JoinProcAction implements CommandAction {
	

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
request.setCharacterEncoding("utf-8");



  System.out.println(request.getParameter("name"));
  System.out.println(request.getParameter("id"));
  System.out.println(request.getParameter("Password"));
  System.out.println(request.getParameter("email"));
  System.out.println(request.getParameter("phone1"));
  System.out.println(request.getParameter("gender"));
  System.out.println(request.getParameter("cal"));
  System.out.println(request.getParameter("tag"));
 

		memberDAO dao = memberDAO.getInstance();
		memberVO vo = new memberVO 
				(request.getParameter("name"),
				request.getParameter("id"),
				request.getParameter("Password"),
				request.getParameter("email"),
				request.getParameter("phone1"),
				request.getParameter("gender"),
				request.getParameter("cal"),
				request.getParameter("tag"));
				
		boolean flag = dao.memberInsert(vo);
		
		request.setAttribute("flag", flag);
		request.setAttribute("name", request.getParameter("name"));
		
		return "/join/joinproc.jsp";
		
	}

}
