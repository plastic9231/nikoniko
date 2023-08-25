<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/commreccontent.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

	<main>
		<div align="center">
			
			<div class="reccontent-title" align="center">${article.br_subject}</div>
			<table class="reccontent-table">
				<tr>
					<td>글번호</td>
					<td>${article.br_num}</td>
				</tr>
			
				<tr>
					<td>작성자</td>
					<td>${article.br_writer}</td>
				</tr>
				
				<tr>
					<td>작성일</td>
					<td>${article.br_regdate}</td>
				</tr>
				
				<tr>
					<td>조회수</td>
					<td>${article.br_readcount}</td>
				</tr>
			
			</table>
			<hr class="reccontent-hr">
			
			<!-- 나중에 사진 첨부할 수 있는 기능 만들면 들어가는 곳 -->
			<div class="reccontent-image" align="center">
    		<c:if test="${not empty article.br_filename}">
       			<img src="${article.br_filename}" alt="Attached Image" width="300"> <!-- width는 필요에 따라 조절 가능 -->
   			 </c:if>
			</div>
			
			<div class="reccontent-content" align="left">
				${article.br_content }
			</div>
			
			<hr class="reccontent-hr">
			<div class="commrec-write-comment" align="left">
				<h3>댓글 작성</h3>
			
   				<form action="#" method="post">
   				<table class="commrec-write-comment-table">	 
   					<tr>
						<td>댓글 번호</td>
						<td>002</td>
					</tr>
   				
					<tr>
						<td>작성자</td>
						<td>홍길동</td>
					</tr>
				
					<tr>
						<td>작성시간</td>
						<td>2023-08-15</td>
					</tr>
				
					<tr>
						<td>댓글 내용</td>
						<td><p><textarea cols="35" rows="5" class="commrec-write-comment-textarea"></textarea></p></td>    					
					</tr>
					<tr>
						<td><p>비밀번호</p></td>
						<td><input type="password" class="commrec-password-input"></td>
						<td><p><input type="submit" value="댓글 등록" class="commrec-register-btn" align="right"></p></td>
					</tr>
				</table>
    			</form>
			</div>
			

			<div class="commreccomment" align="left">
				<h3>댓글 목록</h3>
				<table class="commreccomment-table">
				   	<tr>
						<td>댓글 번호</td>
						<td>001</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>홍길동</td>
					</tr>
				
					<tr>
						<td>작성시간</td>
						<td>2023-08-15</td>
					</tr>
				
					<tr>
						<td>댓글 내용</td>
						<td>とても明るくていい内容だと思います！</td>
						<td>
						<button class="commrec-comment-btn edit">댓글 수정</button>
                		<button class="commrec-comment-btn delete">댓글 삭제</button>
                		</td>
						
					</tr>
				</table>
			</div>
			
			<div align="center" style="margin-top: 20px;" class="commrec-post-btn">
    			<button class="commrec-post-btn list" onclick="document.location.href='/community/commrec.ndo?pageNum=${pageNum}'">글 목록으로</button>
    			<button class="commrec-post-btn edit">글 수정</button>
    			<button class="commrec-post-btn delete">글 삭제</button>
			</div>

		</div>
	</main>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
