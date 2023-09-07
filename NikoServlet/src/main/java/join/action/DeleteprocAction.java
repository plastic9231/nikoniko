package join.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;
import join.model.memberDAO;

public class DeleteprocAction implements CommandAction {
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		memberDAO dao = memberDAO.getInstance();
		int result = 0;
		HttpSession session = request.getSession();
		String loginID = (String)session.getAttribute("loginID");
		String loginPass = (String)session.getAttribute("loginPass");
		String pass = request.getParameter("pass");
		System.out.println(loginPass);
		System.out.println(pass);
		if(loginPass.equals(pass)) {
			 result = dao.deleteMember(loginID, pass);
			 if (result != 0) {
					session.invalidate();
				}
			 request.setAttribute("result", result);
			 return "/mypage/deleteproc.jsp";
		}else {
			return "/mypage/mypage.jsp";
			
		}
		
		
		
		
		
		
	}
	
}
