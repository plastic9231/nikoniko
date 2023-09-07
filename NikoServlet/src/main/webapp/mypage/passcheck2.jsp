<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>password check</title>
<link type = "text/css" rel = "stylesheet" href = "../css/passcheck.css">
</head>
<body>
<form action="/mypage/remypage.ndo" method="post">
	<div class="box">
	
		<div class="checkbox">
			<div class="check">본인 확인을 위해 비밀번호를 입력하세요.</div>
		</div>
		
		<div class="passbox">
			<div class="pass"><input type="password" id="Passcheck" class="passcheck" placeholder="비밀번호" name="pass"></div>
		</div>
		
		<div class="buttonbox">
			<div class="button">
				<input type="button" value="취소" class="cancel" onclick="location.href='/mypage/mypage.ndo'">
				<input type="submit" value="확인" class="ok">
			</div>
		</div>
		
	
	</div>
</form>
</body>
</html>