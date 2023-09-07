<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북마크 페이지</title>
<link rel="stylesheet" href="../css/content_main.css">
<link rel="stylesheet" href="../css/content.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
</head>
<body>
	<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>
	<main>
	<br>
	<br>
		<div id="landmain_list" style="margin-left: 50px;">
			<%@ include file="bookmark_con.jsp"%>
		</div>
	</main>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>