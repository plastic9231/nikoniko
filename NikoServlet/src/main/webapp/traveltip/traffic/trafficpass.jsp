<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통패스</title>
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
				<img class="img_tip_traffic" alt="pass" src="../../img/pass.png" usemap="#ticket">
				<map name="ticket">
					<area shape="rect" id="tokyosubway" coords="64,72,324,262"
						href="https://www.tokyometro.jp/kr/ticket/travel/index.html"
						target="_blank">
					<area shape="rect" id="tokunai" coords="63,297,328,492"
						href="https://www.jreast.co.jp/multi/ko/pass/tokunai_pass.html"
						target="_blank">
					<area shape="rect" id="tokyometro" coords="26,523,337,713"
						href="https://www.tokyometro.jp/kr/ticket/1day/index.html#anc02"
						target="_blank">
				</map>
			</div>
		</div>
	</main>
	<div class="footer">
		<%@ include file="../../common/footer.jsp"%>
	</div>
</body>
</html>