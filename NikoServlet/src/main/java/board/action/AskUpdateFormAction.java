package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.AskBoardDAO;
import board.model.AskBoardVO;

public class AskUpdateFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		// 해당 글번호
		int num = Integer.parseInt(request.getParameter("num"));
		// 해당 페이지 번호
		String pageNum = request.getParameter("pageNum");
		// 데이터베이스 처리
		AskBoardDAO dbPro = AskBoardDAO.getInstance();
		// 데이터베이스에서 메소드 호출(updateGetArticle)
		AskBoardVO article = dbPro.updateGetArticle(num);
		// 해당 뷰에 속성 저장
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);
		
		return "/community/commaskupdateForm.jsp";
	}

}
