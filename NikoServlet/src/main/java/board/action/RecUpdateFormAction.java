package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecUpdateFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		// 해당 글번호
		int num = Integer.parseInt(request.getParameter("num"));
		// 해당 페이지 번호
		String pageNum = request.getParameter("pageNum");
		// 데이터베이스 처리
		RecBoardDAO dbPro = RecBoardDAO.getInstance();
		// 데이터베이스에서 메소드 호출(updateGetArticle)
		RecBoardVO article = dbPro.updateGetArticle(num);
		// 해당 뷰에 속성 저장
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);
		
		return "/community/commrecupdateForm.jsp";
	}

}
