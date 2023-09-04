package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.AskBoardDAO;
import board.model.AskBoardVO;

public class AskUpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		String pageNum = request.getParameter("pageNum");
		
		AskBoardVO article = new AskBoardVO();
		article.setNum(Integer.parseInt(request.getParameter("num")));
		article.setSubject(request.getParameter("subject"));
		article.setWriter(request.getParameter("writer"));
		article.setContent(request.getParameter("content"));
		article.setPass(request.getParameter("pass"));
		
		AskBoardDAO dbPro = AskBoardDAO.getInstance();
		int check = dbPro.updateArticle(article);
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("check", new Integer(check));
		
		return "/community/commaskupdatePro.jsp";
	}

}
