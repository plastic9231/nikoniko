<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../../css/header.css">
<link rel="stylesheet" href="../../css/content.css">
<link rel="stylesheet" href="../side/sidebar.css">
<link rel="stylesheet" href="../../css/footer.css">
</head>
<body>
	<div style="z-index: 999"><%@ include file="../../common/header.jsp"%></div>
	<main>
	<div id="main_img" style="z-index: 999">
	<img alt="people" src="http://localhost:9090/NikoServlet/img/contentmain.png">
	</div>
	
	<div>
	<%@ include file="../side/sidebar.jsp"%>
	</div>
	
	<div width="700px" height="1400px" background-color="red">
    <%-- <%@ include file="landmain_con.jsp"%> --%>
    </div>
	
	
	
	
	
	
	</main>
<%@ include file="../../common/footer.jsp" %>
</body>
</html>