package join.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;
import join.model.memberDAO;
import join.model.memberVO;

public class RemypageprocAction implements CommandAction {
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		String loginID = (String)session.getAttribute("loginID");
		
		memberDAO dao = memberDAO.getInstance();
		memberVO vo = new memberVO
				(
				request.getParameter("name"),
				request.getParameter("id"),
				request.getParameter("Password"),
				request.getParameter("email"),
				request.getParameter("phone1"),
				request.getParameter("gender"),
				request.getParameter("cal"),
				request.getParameter("tag"));
		
		dao.updateMember(vo);
		dao.getMember(vo.getId());
		request.setAttribute("name", vo.getName());
		request.setAttribute("id", vo.getId());
		request.setAttribute("Password", vo.getPassword());
		request.setAttribute("email", vo.getEmail());
		request.setAttribute("cal", vo.getCal());
		request.setAttribute("phone1", vo.getPhone1());
		request.setAttribute("gender", vo.getGender());
		request.setAttribute("tag", vo.getTag());
		session.setAttribute("loginPass", vo.getPassword());
		return "/mypage/mypage.jsp";
		
	}
	
}
