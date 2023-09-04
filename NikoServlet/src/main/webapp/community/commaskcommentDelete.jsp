<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>댓글 삭제 결과</title>
</head>
<body>
    <h1>댓글 삭제 결과</h1>
    <p>${result}</p>
    <a href="/community/commaskcontent.ndo?num=${num}&pageNum=${pageNum}">게시글로 돌아가기</a>
</body>
</html>
