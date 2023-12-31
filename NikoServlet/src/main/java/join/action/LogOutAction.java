package join.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;

public class LogOutAction implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "/main/main.ndo";
		
	}
	
}
