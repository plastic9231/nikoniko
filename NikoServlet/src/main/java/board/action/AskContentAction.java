package board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.AskBoardDAO;
import board.model.AskBoardVO;
import board.model.AskCommentDAO;
import board.model.AskCommentVO;

public class AskContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		// 해당 글번호
		int num = Integer.parseInt(request.getParameter("num"));
		// 해당 페이지 번호
		String pageNum = request.getParameter("pageNum");
		// 데이터베이스 처리
		AskBoardDAO dbPro = AskBoardDAO.getInstance();
		// 데이터베이스에서 메소드 호출(getArticle)
		AskBoardVO article = dbPro.getArticle(num);
		// 해당 뷰에 속성 저장
		request.setAttribute("num", new Integer(num));
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);
		
        // 댓글 목록을 불러옵니다.
        AskCommentDAO commentDAO = AskCommentDAO.getInstance();
        List<AskCommentVO> commentList = commentDAO.getComments(num);
        request.setAttribute("commentList", commentList);
		
		return "/community/commaskcontent.jsp";
	}

}
