package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.RecBoardDAO;
import board.model.RecBoardVO;

// 글 상세보기 명령어 처리 클래스
public class RecContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		// 해당 글번호
		int num = Integer.parseInt(request.getParameter("num"));
		// 해당 페이지 번호
		String pageNum = request.getParameter("pageNum");
		// 데이터베이스 처리
		RecBoardDAO dbPro = RecBoardDAO.getInstance();
		// 데이터베이스에서 메소드 호출(getArticle)
		RecBoardVO article = dbPro.getArticle(num);
		// 해당 뷰에 속성 저장
		request.setAttribute("num", new Integer(num));
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);
		
		return "/community/commreccontent.jsp";
	}

}
