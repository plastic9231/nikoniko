<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 내용</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/comminfocontent.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

	<main>
		<div align="center">
			
			<div class="reccontent-title" align="center">${article.subject}</div>
			<table class="reccontent-table">
				<tr>
					<td>글번호</td>
					<td>${article.num}</td>
				</tr>
			
				<tr>
					<td>작성자</td>
					<td>${article.writer}</td>
				</tr>
				
				<tr>
					<td>작성일</td>
					<td><fmt:formatDate value="${article.regdate}" dateStyle="long"/></td>
				</tr>
				
				<tr>
					<td>조회수</td>
					<td>${article.readcount}</td>
				</tr>
			
			</table>
			<hr class="reccontent-hr">
			
			<div class="reccontent-content" align="left">
					${article.content}
			</div>
			<hr class="reccontent-hr">
			<div align="center" style="margin-top: 20px;" class="commrec-post-btn">
    			<button class="commrec-post-btn list" onclick="document.location.href='/community/comminfo.ndo?pageNum=${pageNum}'">글 목록으로</button>
    			<button class="commrec-post-btn edit" onclick="document.location.href='/community/comminfoupdateForm.ndo?num=${article.num}&pageNum=${pageNum}'">글 수정</button>
    			<button class="commrec-post-btn delete" onclick="document.location.href='/community/comminfodeleteForm.ndo?num=${article.num}&pageNum=${pageNum}'">글 삭제</button>
			</div>

		</div>
	</main>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
