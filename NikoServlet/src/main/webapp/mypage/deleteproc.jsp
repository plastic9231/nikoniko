<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="3;url=/login/login.ndo">
<title> 회원 탈퇴 </title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/deleteproc.css">
</head>
<body>
	<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>
	
<c:set var="result" value="${result }"></c:set>

<div class="box">
<div class="bye">
<font size="5">
회원 정보가 삭제 되었습니다.<br><br>
3초 후 로그인 페이지로 이동합니다.
</font>



<c:if test="${result eq 0 }">

<script type="text/javascript">
alert("비밀번호 오류");
history.go(-1);
</script>
</c:if>
</div>
</div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>