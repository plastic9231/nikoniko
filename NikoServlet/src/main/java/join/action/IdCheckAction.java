package join.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.action.CommandAction;
import join.controller.ActionForward;
import join.model.memberDAO;

public class IdCheckAction implements CommandAction {


	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		memberDAO dao = memberDAO.getInstance();
		

		String id = request.getParameter("id");
		boolean check = dao.idCheck(id);
		request.setAttribute("check", check);
		request.setAttribute("id", id);
	
		return "/join/idcheck.jsp";
	}
	}
