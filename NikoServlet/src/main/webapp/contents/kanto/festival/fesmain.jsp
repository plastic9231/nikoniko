<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간토의 축제</title>
<link rel="stylesheet" href="../../../css/header.css">
<link rel="stylesheet" href="../../../css/content_main.css">
<link rel="stylesheet" href="../../../css/content.css">
<link rel="stylesheet" href="../../side/sidebar.css">
<link rel="stylesheet" href="../../../css/footer.css">
</head>
<body>
	<div style="z-index: 999">
	<%@ include file="../../../common/header2.jsp"%>
	</div>
	<main>
		<div id="img_block">
			<img id="main_img" alt="people"
				src="http://localhost:9090/img/contentmain.png">
		</div>

		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>

		<div id="landmain_list">
			<%@ include file="fesmain_con.jsp"%>
		</div>

	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>