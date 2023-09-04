<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <link rel="stylesheet" href="../css/header.css">
   <link rel="stylesheet" href="../css/commrec.css">
   <link rel="stylesheet" href="../css/footer.css">
 <script type="text/javascript" src=commscript.js></script>  
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

    <main>
<div class="bestrev">
    <div class="bestrev-text">
        <h4>이달의 BEST 추천 후기</h4>
        <hr>    
    </div>

 	<div class='rev-slider'>
        <div class='rev-slide-track'>
            <!-- JSTL forEach loop to iterate through top articles -->
            <c:forEach var="topArticle" items="${topArticles}">
                <div class='rev-slide'>
                    <div class="train-card">
                    <a href="/community/commreccontent.ndo?num=${topArticle.num}&pageNum=${currentPage}">
                        <!-- Assuming the RecBoardVO has a field named "imageSrc" that holds the image URL -->
                        <img alt="${topArticle.subject}" src="http://localhost:9090/uploaded_images/${topArticle.num}.png" width="300px" height="300px">
                    </a>
                    </div>
                    
                </div>
            </c:forEach>
        </div>
    </div>
</div>

		
		
	<div class="board-container">
   		<div class="board-top">
   			<div class="board-titles">
   			</div>
         <form action="/community/commrec.ndo" method="post" name="find_frm" onsubmit="return check()">
			<table>
				<tr>
					<td class="searchListTop">
						<select name="find">
						<option value="writer">작성자</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
						</select>
					</td>
					
					<td align="center" class="searchListText">
						<input type="text" placeholder="검색어 입력" name="find_box">
					</td>
					
					<td align="center" class="searchButton">
						<button type="submit" value="검색">
						검색
						</button>
					</td>
					
					<td class="newContentWrite">
    					<a href="/community/commrecwriteForm.ndo">새글쓰기</a>
					</td>
				</tr>
			</table>
		</form>
		

        </div> 
         
         
  
        <c:if test="${count>0}">
       <table class="board-table" width="700">
        
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
 		<c:forEach var="article" items="${articleList}">		
		<tr height="30">
			<td width="50" align="center">
			<c:out value="${number}"/>
			<c:set var="number" value="${number - 1}"/>
			</td>
			
			<td width="250">
			
			<a href="/community/commreccontent.ndo?num=${article.num}&pageNum=${currentPage}">
				${article.subject}
			</a>
			
			</td>
			
			<td align="center" width="100">
			<a href="#">${article.writer}</a>
			</td>
			<td align="center" width="150">
				${article.regdate}
			</td>
			<td align="center" width="50">
				${article.readcount}
			</td>
		</tr>
		</c:forEach> <%--end forEach --%>
            </tbody>
	            
        </table>
        </c:if>
 <%-- 페이징 처리 --%>
<c:if test="${count>0}">
	<c:set var="imsi" value="${count % pageSize == 0 ? 0:1}"/>
	<c:set var="pageCount" value="${count / pageSize + imsi}"/>
	<c:set var="pageBlock" value="${5}"/>
	<fmt:parseNumber var="result" value="${(currentPage-1) / pageBlock}" integerOnly="true"/>
	<c:set var="startPage" value="${result * pageBlock + 1}"></c:set>
	<c:set var="endPage" value="${startPage + pageBlock - 1}"></c:set>
	<c:if test="${endPage > pageCount}">
		<c:set var="endPage" value="${pageCount}"></c:set>
	</c:if>       
        <div class="board-pagination" align="center">

<c:if test="${currentPage > 1}">
    <a href="#" onclick="frr_sub(${currentPage-1}, '${find}', '${find_box}')" class="left-lt">&lt;</a>
</c:if>

<c:forEach var="i" begin="${startPage}" end="${endPage}">
    <a href="#" onclick="frr_sub(${i}, '${find}', '${find_box}')">${i}</a>
</c:forEach>

<c:if test="${currentPage+1 < pageCount}">
    <a href="#" onclick="frr_sub(${currentPage+1}, '${find}', '${find_box}')" class="right-rt">&gt;</a>
</c:if>

     </div>
</c:if>    
	<form action="" method="post" name="i_frm">
		<input type="hidden" name="find_box" value="${find_box}">
		<input type="hidden" name="find" value="${find}">
	</form>
        
    </div>
		
		
		
    </main>
    
    
<%@ include file="../common/footer.jsp" %>
</body>
</html>