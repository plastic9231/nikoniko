<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <link rel="stylesheet" href="../css/header.css">
   <link rel="stylesheet" href="../css/comminfo.css">
   <link rel="stylesheet" href="../css/footer.css">
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

    <main>
		
	<div class="board-container">
   		<div class="board-top">
   			<div class="board-titles">
   				공지사항 게시판
   			</div>
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
    					<a href="writeForm.jsp">새글쓰기</a>
					</td>
				</tr>
			</table>
		</form>
		

        </div> 
         
         
  
         
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
           	 	<tr>
               		<td align="center" width="50">
						<a href="#">001</a>
					</td>
					<td align="center" width="300">
						첫번째 공지사항입니다.
					</td>
					<td align="center" width="100">
						홍길동
					</td>
					<td align="center" width="150">
						2023-08-15
					</td>
					<td align="center" width="100">
						33
					</td>
				</tr>
            </tbody>
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