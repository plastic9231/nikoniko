<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/commreccontent.css">
    <link rel="stylesheet" href="../css/footer.css">
    <script type="text/javascript" src=commscript.js></script>
	<style>
	/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
	
	</style>
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
					<td><fmt:formatDate value="${article.regdate }" dateStyle="long"/></td>
				</tr>
				
				<tr>
					<td>조회수</td>
					<td>${article.readcount}</td>
				</tr>
			
			</table>
			<hr class="reccontent-hr">

			<img src="http://localhost:9090/uploaded_images/${article.num}.png" alt="Attached Image" width="800px" height="800px"/>
			<br>
			<br>
			<div class="reccontent-content" align="left">
					${article.content}
			</div>
			<hr class="reccontent-hr">
			
<div class="commrec-write-comment" align="left">
    <h3>댓글 작성</h3>


    <!-- 댓글 작성 폼 -->
    <form action="/community/commreccommentAdd.ndo?num=${article.num}&pageNum=${pageNum}" method="post">
        <input type="hidden" name="post_num" value="${article.num}">
        <table class="commrec-write-comment-table">	 
            <tr>
                <td>작성자</td>
                <td><input type="text" name="nickname" class="commrec-writer-comment-table" required></td>
            </tr>
            <tr>
                <td>댓글 내용</td>
                <td><textarea name="content" cols="35" rows="5" class="commrec-write-comment-textarea" required></textarea></td>    					
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="password" class="commrec-password-input" required></td>
                <td><input type="submit" value="댓글 등록" class="commrec-register-btn"></td>
            </tr>
        </table>
    </form>
</div>

<!-- 댓글 목록 -->
<div class="commreccomment" align="left">
    <h3>댓글 목록</h3>
    <c:if test="${not empty commentList}">
        <c:forEach var="comment" items="${commentList}">
            <table class="commreccomment-table">
                <tr>
                    <td>댓글 번호</td>
                    <td>${comment.commentId}</td>
                </tr>
                <tr>
                    <td>작성자</td>
                    <td>${comment.nickname}</td>
                </tr>
                <tr>
                    <td>작성시간</td>
                   	<td><fmt:formatDate value="${comment.createdAt}" dateStyle="long"/></td>
                </tr>
                <tr>
                    <td>댓글 내용</td>
                    <td>${comment.content}</td>
                    <td>
                        <button class="commrec-comment-btn delete" onclick="openDeleteModal(${comment.commentId}, ${comment.postNum}, ${pageNum})">댓글 삭제</button>
                    </td>
                </tr>
            </table>
        </c:forEach>
    </c:if>
    <c:if test="${empty commentList}">
        <p>No comments yet!</p>
    </c:if>
</div>


			
			
			<div align="center" style="margin-top: 20px;" class="commrec-post-btn">
    			<button class="commrec-post-btn list" onclick="document.location.href='/community/commrec.ndo?pageNum=${pageNum}'">글 목록으로</button>
    			<button class="commrec-post-btn edit" onclick="document.location.href='/community/commrecupdateForm.ndo?num=${article.num}&pageNum=${pageNum}'">글 수정</button>
    			<button class="commrec-post-btn delete" onclick="document.location.href='/community/commrecdeleteForm.ndo?num=${article.num}&pageNum=${pageNum}'">글 삭제</button>
			</div>

		</div>
	</main>

<%@ include file="../common/footer.jsp" %>

<!-- Delete Comment Modal -->
<div id="deleteModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeDeleteModal()">&times;</span>
        <h4>댓글을 삭제하시겠습니까?</h4>
        <form id="deleteCommentForm" action="/community/commreccommentDelete.ndo" method="post">
            <label for="deletePassword">비밀번호:</label>
            <input type="password" id="deletePassword" name="password" required>
            <input type="hidden" id="deleteCommentId" name="commentId">
            <input type="hidden" id="deletePostNum" name="num">
            <input type="hidden" id="deletePageNum" name="pageNum">
            <input type="submit" value="삭제">
        </form>
    </div>
</div>

<!-- Add this to your existing script to close the modal -->
<script>
function closeDeleteModal() {
    var modal = document.getElementById("deleteModal");
    modal.style.display = "none";
}
</script>






<form id="deleteCommentForm" action="/community/commreccommentDelete.ndo" method="post">
    <label for="deletePassword">비밀번호:</label>
    <input type="password" id="deletePassword" name="password">
    <input type="hidden" id="deleteCommentId" name="commentId">
    <input type="hidden" id="deletePostNum" name="postNum">
    <input type="hidden" id="deletePageNum" name="pageNum">
    <input type="submit" value="삭제">
</form>
    <script>
    function openDeleteModal(commentId, postNum, pageNum) {
    // 모달에 commentId, postNum, pageNum 설정
    document.getElementById("deleteCommentId").value = commentId;
    document.getElementById("deletePostNum").value = postNum;
    document.getElementById("deletePageNum").value = pageNum;

    // 모달 창을 띄운다.
    var modal = document.getElementById("deleteModal");
    modal.style.display = "block";
	}
    </script>
    
    
</body>
</html>
 