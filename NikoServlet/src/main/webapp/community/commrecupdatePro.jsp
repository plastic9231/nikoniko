<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check==1}">
<meta charset="UTF-8" http-equiv="Refresh" content="0;url=/community/commrec.ndo?pageNum=${pageNum}">
</c:if>

<!DOCTYPE html>
<html>
<head>

<title>추천 게시판 글 수정 비밀번호 틀림</title>
</head>
<body>
<c:if test="${check==0}">
비밀번호가 틀렸습니다.
<br>
<a href="javascript:history.go(-1)">[글 수정 폼으로 돌아가기]</a>
</c:if>

</body>
</html>