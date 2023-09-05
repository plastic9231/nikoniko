package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.RecCommentDAO;
import board.model.RecCommentVO;

public class RecCommentWriteAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

    	request.setCharacterEncoding("utf-8");
        // 사용자로부터 댓글 정보를 받아옵니다.
        int postNum = Integer.parseInt(request.getParameter("post_num"));
        String nickname = request.getParameter("nickname");
        String content = request.getParameter("content");
        String password = request.getParameter("password");
        String pageNum = request.getParameter("pageNum");
        // VO 객체에 댓글 정보를 담습니다.
        RecCommentVO comment = new RecCommentVO();
        comment.setPostNum(postNum);
        comment.setNickname(nickname);
        comment.setContent(content);
        comment.setPassword(password);
        
        // DAO 객체를 통해 댓글을 데이터베이스에 저장합니다.
        RecCommentDAO dao = RecCommentDAO.getInstance();
        dao.insertComment(comment);
        
        // 결과 메시지 설정
        request.setAttribute("result", "댓글이 추가되었습니다.");
        request.setAttribute("post_num", postNum);
		request.setAttribute("pageNum", new Integer(pageNum));
        
        // 댓글이 성공적으로 저장된 후에 commaskcommentAdd.jsp 페이지로 이동합니다.
        return "/community/commreccommentAdd.jsp";
	}

}
