package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.InfoBoardDAO;
import board.model.InfoBoardVO;

public class InfoContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		// 해당 글번호
		int num = Integer.parseInt(request.getParameter("num"));
		// 해당 페이지 번호
		String pageNum = request.getParameter("pageNum");
		// 데이터베이스 처리
		InfoBoardDAO dbPro = InfoBoardDAO.getInstance();
		// 데이터베이스에서 메소드 호출(getArticle)
		InfoBoardVO article = dbPro.getArticle(num);
		// 해당 뷰에 속성 저장
		request.setAttribute("num", new Integer(num));
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);
		
		return "/community/comminfocontent.jsp";
	}

}
