package join.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;
import join.model.memberDAO;
import join.model.memberVO;



public class MypageprocAction implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		memberDAO dao = memberDAO.getInstance();
		HttpSession session = request.getSession();
		
		String loginID = (String)session.getAttribute("loginID");
		System.out.println(loginID);
		memberVO vo = dao.getMember(loginID);
		System.out.println(vo.getName());
		request.setAttribute("name", vo.getName());
		request.setAttribute("id", vo.getId());
		request.setAttribute("Password", vo.getPassword());
		request.setAttribute("email", vo.getEmail());
		request.setAttribute("cal", vo.getCal());
		request.setAttribute("phone1", vo.getPhone1());
		request.setAttribute("gender", vo.getGender());
		request.setAttribute("tag", vo.getTag());
		
		return "/mypage/mypage.jsp";
		
	}
	
}
