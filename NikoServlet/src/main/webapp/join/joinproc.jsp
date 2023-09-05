<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> welcome </title>
<link type = "text/css" rel = "stylesheet" href = "../css/conjoin.css">
</head>
<body>
<c:set var="flag" value="${flag }" />
	<div class="conbox">
		<div class="conheader">
			<div class="con"> ${name } 님 가입을 환영합니다. </div>
		</div>
		
		<div class="buttons">
			<div class="bottons2">
			<c:choose>
			<c:when test="${flag}">
				<input type="button" value="메인페이지" id="tomain" class="Tomain" onclick="location.href='../main/main.jsp'"> </c:when>
			<c:otherwise>
				<input type="button" value="로그인" id="tologin" class="Tologin" onclick="location.href='../login/login.jsp'"> </c:otherwise>
			</c:choose>
			</div>
		</div>
	</div>
</body>
</html>