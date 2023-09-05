<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철</title>
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
				<img class="img_tip_traffic" alt="subway" src="../../img/subway.png">
			</div>
		</div>
	</main>
	<div class="footer">
		<%@ include file="../../common/footer.jsp"%>
	</div>
</body>
</html>