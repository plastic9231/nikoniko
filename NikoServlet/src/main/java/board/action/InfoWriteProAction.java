package board.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.InfoBoardDAO;
import board.model.InfoBoardVO;

public class InfoWriteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		request.setCharacterEncoding("utf-8");
		
		InfoBoardVO article = new InfoBoardVO();
		article.setNum(Integer.parseInt(request.getParameter("num")));
		article.setWriter(request.getParameter("writer"));
		article.setSubject(request.getParameter("subject"));
		article.setPass(request.getParameter("pass"));
		article.setRef(Integer.parseInt(request.getParameter("ref")));
		article.setStep(Integer.parseInt(request.getParameter("step")));
		article.setDepth(Integer.parseInt(request.getParameter("depth")));
		article.setRegdate(new Timestamp(System.currentTimeMillis()));
		article.setContent(request.getParameter("content"));
		
		InfoBoardDAO dbPro = InfoBoardDAO.getInstance();
		dbPro.InsertArticle(article);
		
		return "/community/comminfowritePro.jsp";
	}

}
