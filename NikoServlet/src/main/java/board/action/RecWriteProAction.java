package board.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecWriteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");		
		
		MultipartRequest multi = null;	
		int sizeLimit = 10 * 1024 * 1024 ; // 10메가입니다.
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String savePath = rootPath + "uploadimg";  // 파일이 업로드될 실제 tomcat 폴더의 WebContent 기준
		System.out.println("============ savePath = " + savePath);

		
		try {
		    multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		    String filename = multi.getFilesystemName("filename");
		    
		    RecBoardVO article = new RecBoardVO();
		    article.setBr_num(Integer.parseInt(multi.getParameter("num")));
		    article.setBr_writer(multi.getParameter("writer"));
		    article.setBr_subject(multi.getParameter("subject"));
		    article.setBr_password(multi.getParameter("pass"));
		    article.setBr_regdate(new Timestamp(System.currentTimeMillis()));
		    article.setBr_ref(Integer.parseInt(multi.getParameter("ref")));
		    article.setBr_step(Integer.parseInt(multi.getParameter("step")));
		    article.setBr_depth(Integer.parseInt(multi.getParameter("depth")));
		    article.setBr_content(multi.getParameter("content"));
		    
		    
		    // filename을 VO에 저장하는 코드가 필요합니다. 예:
		    article.setBr_filename(filename); // 이를 위해 RecBoardVO에 해당 메서드를 추가해야 합니다.
		    
		    
		    RecBoardDAO dbPro = RecBoardDAO.getInstance();
		    dbPro.InsertArticle(article);
		    
		} catch (Exception e) {
		    e.printStackTrace();
		}
		
		return "/community/commrecwritePro.jsp";
	}

}
