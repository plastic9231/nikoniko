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
		
		String id = request.getParameter("id");
		String Password = request.getParameter("Password");
		
		int check = dao.loginCheck(id, Password);
		
		if (check == 1) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginID", id);
			
		} else if (id != null && Password != null) {
			
			request.setAttribute("check", check);
			
		}
		
		return "login.ndo?cmd=login";
		
	}
	
}
