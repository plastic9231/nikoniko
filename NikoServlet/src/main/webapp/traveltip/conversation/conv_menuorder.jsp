<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식점 주문할 때</title>
	<link rel="stylesheet" href="../../css/header.css">
	<link rel="stylesheet" href="../../css/traveltip.css">
	<link rel="stylesheet" href="../sidebar/sidebar.css">
	<link rel="stylesheet" href="../../css/footer.css">
</head>
<body>
	<div style="z-index: 999"><%@ include file="../../common/header2.jsp"%></div>
	<main>
		<div class="contents">
			<div class="contents_sidebar">
				<%@ include file="../sidebar/sidebar.jsp"%>
			</div>
			<div class="contents_img">
				<img class="img_tip" alt="menuorder" src="../../img/menuorder.png">
			</div>
		</div>
	</main>
	<div class="footer">
		<%@ include file="../../common/footer.jsp"%>
	</div>
</body>
</html>