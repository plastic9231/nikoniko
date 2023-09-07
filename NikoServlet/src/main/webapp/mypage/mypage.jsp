<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My page</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link type = "text/css" rel = "stylesheet" href = "../css/mypage.css">

</head>
<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>
<c:set var="flag" value="${flag }" />
	<div class="mpbox">
		<div class="infobox">
		
			<div class="info">
			
				<div class="name">
					<div class="name1"> 이름 </div>
					<div class="name2">
					${name }
					</div>
				</div>
				
				<div class="id">
					<div class="id1"> 아이디 </div>
					<div class="id2">
						${id }
					</div>
				</div>
				
				<div class="birth">
					<div class="birth1"> 생일 </div>
					<div class="birth2">
						${cal }
					</div>
				</div>
				
				<div class="number">
					<div class="number1"> 연락처 </div>
					<div class="number2">
						${phone1 }
					</div>
				</div>
				
				<div class="email">
					<div class="email1"> 이메일 </div>
					<div class="email2">
						${email }
					</div>
				</div>
				
				<div class="tra">
					<div class="tra1"> 여행 스타일 </div>
					<div class="tra2">
						${tag }
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div class="bottonbox">
			<input type="submit" value="정보 수정" id="mpcheck" class="MpCheck" onclick="location.href='../mypage/passcheck2.jsp'">
			<input type="button" value="회원 탈퇴" id="byebye" class="Byebye" onclick="location.href='../mypage/deleteform.ndo'">
		</div>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>