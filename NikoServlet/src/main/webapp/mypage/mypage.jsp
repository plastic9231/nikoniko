<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My page</title>
<link type = "text/css" rel = "stylesheet" href = "../css/mypage.css">
</head>
<body>
	<div class="mpbox">
		<div class="infobox">
		
		
			<div class="img">
				<img src="https://via.placeholder.com/300x300" alt="300*300 size image">
			</div>
		
			
			<div class="info">
			
				<div class="name">
					<div class="name1"> 이름 </div>
					<div class="name2">
						<input type="text" id="Username" class="username" placeholder="유저이름">
					</div>
				</div>
				
				<div class="id">
					<div class="id1"> 아이디 </div>
					<div class="id2">
						<input type="text" id="Userid" class="userid" placeholder="유저아이디">
					</div>
				</div>
				
				<div class="birth">
					<div class="birth1"> 생일 </div>
					<div class="birth2">
						<input type="text" id="Userbirth" class="userbirth" placeholder="유저생일">
					</div>
				</div>
				
				<div class="number">
					<div class="number1"> 연락처 </div>
					<div class="number2">
						<input type="text" id="Usernum" class="usernum" placeholder="유저연락처">
					</div>
				</div>
				
				<div class="email">
					<div class="email1"> 이메일 </div>
					<div class="email2">
						<input type="text" id="Useremail" class="useremail" placeholder="유저이메일">
					</div>
				</div>
				
				<div class="tra">
					<div class="tra1"> 여행 스타일 </div>
					<div class="tra2">
						<input type="text" id="Usertag" class="usertag" placeholder="유저태그">
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div class="bottonbox">
			<input type="submit" value="정보 수정" id="mpcheck" class="MpCheck" onclick="location.href='../mypage/remypage.jsp'">
		</div>
	</div>
</body>
</html>