<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="5;url=/login/logout.ndo">
<title>logout</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/logout.css">

</head>
<body>

<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

<div class="box1">
		<div class="box2">
			<div class="logout">
			로그아웃 되었습니다.
			</div>
			<div class="gotomain">
			5초 뒤 메인 화면으로 이동합니다.
			</div>
		</div>
</div>

<%@ include file="../common/footer.jsp" %>

</body>
</html>