package board.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecUpdateProAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        request.setCharacterEncoding("utf-8");
        
        String pageNum = request.getParameter("pageNum");

        // 게시글 정보 설정
        RecBoardVO article = new RecBoardVO();
        article.setNum(Integer.parseInt(getValue(request.getPart("num"))));
        article.setWriter(getValue(request.getPart("writer")));
        article.setSubject(getValue(request.getPart("subject")));
        article.setPass(getValue(request.getPart("pass")));
        article.setRegdate(new Timestamp(System.currentTimeMillis()));
        article.setContent(getValue(request.getPart("content")));

        // 게시글을 데이터베이스에 삽입
        RecBoardDAO dbPro = RecBoardDAO.getInstance();
        int check = dbPro.updateArticle(article);

        // 게시글의 ID 가져오기
        int articleId = article.getNum();

        // 새 이미지 파일 처리
        Part filePart = request.getPart("new_filename");

        if (filePart != null && filePart.getSize() > 0) {
            // 기존 파일 삭제
            File oldFile = new File("C:/Users/SEYOUNG/git/nikoniko/NikoServlet/src/main/webapp/uploadimg/", articleId + ".png");
            if (oldFile.exists()) {
                oldFile.delete();
            }

            // 새 파일 저장
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String fileExtension = fileName.split("\\.")[1];
            fileName = articleId + "." + fileExtension;

            File uploads = new File("C:/Users/SEYOUNG/git/nikoniko/NikoServlet/src/main/webapp/uploadimg");
            File file = new File(uploads, fileName);

            try (InputStream fileContent = filePart.getInputStream();
                 FileOutputStream os = new FileOutputStream(file)) {

                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
            }
        }

        // 페이지 속성 설정
        request.setAttribute("pageNum", pageNum);
        request.setAttribute("check", check);

        return "/community/commrecupdatePro.jsp";
    }

    // Helper method to get value of Part object
    private String getValue(Part part) throws Exception {
        if (part == null) {
            return null;
        }
        InputStream is = part.getInputStream();
        byte[] bytes = new byte[is.available()];
        is.read(bytes);
        return new String(bytes, "UTF-8");
    }
}
