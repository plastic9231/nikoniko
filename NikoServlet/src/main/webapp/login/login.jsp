<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login-page</title>
<link type = "text/css" rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>
<body>
<form method="post" action="/login/loginProc.ndo">
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>
	<div id="login-header">
		
		<div class="Login-page">
			로그인 - Login page
		</div>

		<div id="login-form">
			<div class="idpass">
				<input type="text" name="username" id="username" class="usernameform" placeholder="UserID"> 
				<input type="password" name="password" id="password" class="passwordform" placeholder="Password">
			
				<div class="findkeep">
					<div class="findid">
						<a href="#" class="find"> 아이디/비밀번호 찾기 &nbsp;&nbsp; </a>
					</div>
					
					<div class="keepid">
						<input type="checkbox" id="keepid" class="Keepid"> 아이디저장
					</div>
					
				</div>

			
			</div>
			
				<div>
					<input type="submit" value="Enter" id="login-Enter"  >
				</div>
			

		</div>

		
			
			<div class="joinsubmit">
			
				<input type="button" value="회원가입" id="join-submit" class="joinSubmit" onclick="location.href='../join/join.jsp'">
			
			</div>
			
			</div>
			</form>
<%@ include file="../common/footer.jsp" %>
</body>

</html>