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

	<div class="box">
	
		<div class="checkbox">
			<div class="check">본인 확인을 위해 비밀번호를 입력하세요.</div>
		</div>
		
		<div class="passbox">
			<div class="pass"><input type="password" id="Passcheck" class="passcheck" placeholder="비밀번호"></div>
		</div>
		
		<div class="buttonbox">
			<div class="button">
				<input type="button" value="취소" class="cancel" onclick="location.href='../mypage/mypage.jsp'">
				<input type="submit" value="확인" class="ok" onclick="location.href='../mypage/'">
			</div>
		</div>
		
	
	</div>

</body>
</html>