<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>댓글 추가 결과</title>
    <script type="text/javascript">
        window.onload = function() {
            // 댓글 추가 결과를 가져옴
            var result = "${result}";
           
            // 알림 띄우기
            alert(result);

            // 페이지 새로고침 또는 리다이렉션
            var post_num = "${post_num}";
            var pageNum = "${pageNum}";
            location.href = "/community/commaskcontent.ndo?num=" + post_num + "&pageNum=" + pageNum;
        };
    </script>
</head>
<body>
</body>
</html>
