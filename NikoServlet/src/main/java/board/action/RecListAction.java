package board.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("UTF-8");
		String pageNum = request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum = "1";
		}
		
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		
		int count = 0;
		int number = 0;
		
		// 검색 폼에서 넘어 파라미터 처리
		String find = request.getParameter("find");
		String find_box = request.getParameter("find_box");
		
		if(find==null) {
			find="no";
		}
		if(find_box==null) {
			find_box="no";
		}
		
		
		List<RecBoardVO> articleList = null; 
		
		RecBoardDAO dbPro = RecBoardDAO.getInstance();
		count = dbPro.getArticleCount(find, find_box); // 전체 글의 수
		
        // 상위 3개의 게시글을 가져옵니다. 
        List<RecBoardVO> topArticles = dbPro.getTopArticles(6);
        request.setAttribute("topArticles", topArticles);
		
		if(count>0) {
			articleList = dbPro.getArticles(find, find_box, startRow, endRow);
		}else {
			articleList = Collections.emptyList();
		}
		
		// 글 목록에 표시할 글 번호
		number = count - ((currentPage - 1) * pageSize);
		
		// 해당 뷰에서 사용할 속성 저장
		request.setAttribute("currentPage", new Integer(currentPage));
		request.setAttribute("startRow", new Integer(startRow));
		request.setAttribute("endRow", new Integer(endRow));
		request.setAttribute("count", new Integer(count));
		request.setAttribute("pageSize", new Integer(pageSize));
		request.setAttribute("number", new Integer(number));
		request.setAttribute("articleList", articleList);
		request.setAttribute("find", new String(find));
		request.setAttribute("find_box", new String(find_box));
		
		
		return "/community/commrec.jsp";
	}

}
