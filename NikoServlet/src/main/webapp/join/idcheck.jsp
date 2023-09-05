<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ID 중복체크 </title>

<link type="text/css" rel="stylesheet" href="/css/checkid.css">
<!-- <script type="text/javascript" src="script.js"></script> -->

</head>
<body>

	<div class="box1">
		
		<div class="box2">
			
		<div class="idbox">
			<b>${id}</b>
		<c:if test="${check eq true}">
			는 이미 존재하는 ID입니다. <br>
		</c:if>
		
		<c:if test="${check ne true}">
			는 사용가능한 ID입니다. <br>
		</c:if>
		</div>
		
		<div class="bottonbox">
		<input type="button" class="close" href="#" onclick="javascript:self.close()" value="닫기">
		</div>
		
		</div>
		
	</div>

</body>
</html>