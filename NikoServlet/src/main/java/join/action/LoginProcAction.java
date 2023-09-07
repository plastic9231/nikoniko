package join.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;
import join.model.memberDAO;

public class LoginProcAction implements CommandAction {
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		memberDAO dao = memberDAO.getInstance();
		
		String id = request.getParameter("username");
		String Password = request.getParameter("password");
		
		int check = dao.loginCheck(id, Password);
		
		if (check == 1) {
			
			HttpSession session = request.getSession();
		    session.setAttribute("loginID", id);
		    session.setAttribute("loginPass", Password);
			
		} else if (id != null && Password != null) {
			
			request.setAttribute("check", check);
			
		}
		
		return "/main/main.jsp";
		
	}
	
}
