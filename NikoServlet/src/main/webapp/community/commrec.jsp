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
   				 	<div class='rev-slide'>
      					<div class="train-card"><img alt="" src="../img/slide01.jpg"></div>
   					 </div>
    				<div class='rev-slide'>
      					<div class="train-card"><img alt="" src="../img/slide02.jpg"></div>
    				</div>
    				<div class='rev-slide'>
     					<div class="train-card"><img alt="" src="../img/slide03.jpg"></div>
    				</div>

   				 <!-- 한번 더 반복하기 -->
    				<div class='rev-slide'>
      					<div class="train-card"><img alt="" src="../img/slide01.jpg"></div>
    				</div>
    				<div class='rev-slide'>
      					<div class="train-card"><img alt="" src="../img/slide02.jpg"></div>
    				</div>
    				<div class='rev-slide'>
      					<div class="train-card"><img alt="" src="../img/slide03.jpg"></div>
    				</div>
  				</div>
			</div>
		</div>	
		
	<div class="board-container">
   		<div class="board-top">
         <form method="post" name="search" action="searchList.jsp">	
			<table>
				<tr>
					<td class="searchListTop">
						<select name="searchField">
						<option value="writer">작성자</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
						<option value="subject-content">제목+내용</option>
						</select>
					</td>
					
					<td align="center" class="searchListText">
						<input type="text" placeholder="검색어 입력" name="searchText">
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
         
         
  
         
        <table class="board-table" width="700">
        <c:if test="${count>0}">
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
			<c:out value="${number }"/>
			<c:set var="number" value="${number - 1}"/>
			</td>
			
			<td width="250">
			
			<a href="/community/commreccontent.ndo?num=${article.br_num}&pageNum=${currentPage}">
				${article.br_subject}
			</a>
			
			<c:if test="${article.br_readcount>=5}">
				<img alt="" src="img/hot.gif" border="0" height="16">
			</c:if>
			</td>
			
			<td align="center" width="100">
			<a href="#">${article.br_writer}</a>
			</td>
			<td align="center" width="150">
				${article.br_regdate}
			</td>
			<td align="center" width="50">
				${article.br_readcount}
			</td>
		</tr>
		</c:forEach> <%--end forEach --%>
            </tbody>
	    </c:if>        
        </table>
        <div class="board-pagination" align="center">
            <!-- 페이지 번호 및 네비게이션 버튼이 여기에 들어갑니다. -->
            <a href="list.jsp?pageNum=#" class="left-lt">&lt;</a>

			<a href="list.jsp?pageNum=#">1</a>
	
			<a href="list.jsp?pageNum=#" class="right-rt">&gt;</a>
 
            
            

        </div>
    </div>
		
		
		
    </main>
    
    
<%@ include file="../common/footer.jsp" %>
</body>
</html>