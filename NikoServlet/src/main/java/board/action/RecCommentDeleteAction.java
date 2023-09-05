package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.RecCommentDAO;

public class RecCommentDeleteAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

        // 사용자로부터 댓글의 ID, 비밀번호, 페이지 번호, 그리고 게시글 번호(num)을 받아옵니다.
        int commentId = Integer.parseInt(request.getParameter("commentId"));
        String password = request.getParameter("password");
        String pageNum = request.getParameter("pageNum");
        String num = request.getParameter("num");  // 게시글 번호

        // DAO 객체를 통해 댓글을 데이터베이스에서 삭제합니다.
        RecCommentDAO dao = RecCommentDAO.getInstance();
        int result = dao.deleteComment(commentId, password);

        // 결과 메시지 설정
        if (result > 0) {
            request.setAttribute("result", "댓글이 삭제되었습니다.");
        } else {
            request.setAttribute("result", "비밀번호가 일치하지 않습니다.");
        }
        
        request.setAttribute("num", new Integer(num));  // 게시글 번호도 설정
        request.setAttribute("pageNum", new Integer(pageNum));
     
        
        return "/community/commreccommentDelete.jsp";
	}

}
