/*
package board.action;

import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecWriteProAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        
        request.setCharacterEncoding("utf-8");

        // 게시글 정보 설정
        RecBoardVO article = new RecBoardVO();
        article.setNum(Integer.parseInt(getValue(request.getPart("num"))));
        article.setWriter(getValue(request.getPart("writer")));
        article.setSubject(getValue(request.getPart("subject")));
        article.setPass(getValue(request.getPart("pass")));
        article.setRef(Integer.parseInt(getValue(request.getPart("ref"))));
        article.setStep(Integer.parseInt(getValue(request.getPart("step"))));
        article.setDepth(Integer.parseInt(getValue(request.getPart("depth"))));
        article.setRegdate(new Timestamp(System.currentTimeMillis()));
        article.setContent(getValue(request.getPart("content")));

        // 게시글을 데이터베이스에 삽입
        RecBoardDAO dbPro = RecBoardDAO.getInstance();
        dbPro.InsertArticle(article);

        // 마지막으로 삽입된 게시글의 ID를 가져옵니다.
        int lastInsertedId = dbPro.getLastInsertedId();

        // 이미지 파일 처리
        Part filePart = request.getPart("filename");
        String fileExtension = Paths.get(filePart.getSubmittedFileName()).getFileName().toString().split("\\.")[1];
        String fileName = lastInsertedId + "." + fileExtension;

        // 실제 파일 저장 경로 (서버에 존재해야 하며 쓰기 권한이 있어야 함)
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

        return "/community/commrecwritePro.jsp";
    }

    // Helper method to get value of Part object
    private String getValue(Part part) throws Exception {
        InputStream is = part.getInputStream();
        byte[] bytes = new byte[is.available()];
        is.read(bytes);
        return new String(bytes, "UTF-8");
    }
}
*/

package board.action;

import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.model.RecBoardDAO;
import board.model.RecBoardVO;

public class RecWriteProAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        
        request.setCharacterEncoding("utf-8");

        // 게시글 정보 설정
        RecBoardVO article = new RecBoardVO();
        article.setNum(Integer.parseInt(getValue(request.getPart("num"))));
        article.setWriter(getValue(request.getPart("writer")));
        article.setSubject(getValue(request.getPart("subject")));
        article.setPass(getValue(request.getPart("pass")));
        article.setRef(Integer.parseInt(getValue(request.getPart("ref"))));
        article.setStep(Integer.parseInt(getValue(request.getPart("step"))));
        article.setDepth(Integer.parseInt(getValue(request.getPart("depth"))));
        article.setRegdate(new Timestamp(System.currentTimeMillis()));
        article.setContent(getValue(request.getPart("content")));

        // 게시글을 데이터베이스에 삽입
        RecBoardDAO dbPro = RecBoardDAO.getInstance();
        dbPro.InsertArticle(article);

        // 마지막으로 삽입된 게시글의 ID를 가져옵니다.
        int lastInsertedId = dbPro.getLastInsertedId();
        
        // 마지막으로 삽입된 게시글의 ID를 request에 저장
        request.setAttribute("lastInsertedId", lastInsertedId);

        // 이미지 파일 처리
        Part filePart = request.getPart("filename");
        String fileExtension = Paths.get(filePart.getSubmittedFileName()).getFileName().toString().split("\\.")[1]; 
        // fileExtension = 확장자 처리하려고 만들었으나 적용 쉽지 않음
        
        // 파일 확장자를 request에 저장
        request.setAttribute("fileExtension", fileExtension);

        String fileName = lastInsertedId + "." + fileExtension;

        // 실제 파일 저장 경로 (서버에 존재해야 하며 쓰기 권한이 있어야 함)
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

        return "/community/commrecwritePro.jsp";
    }

    // Helper method to get value of Part object
    private String getValue(Part part) throws Exception {
        InputStream is = part.getInputStream();
        byte[] bytes = new byte[is.available()];
        is.read(bytes);
        return new String(bytes, "UTF-8");
    }
}


