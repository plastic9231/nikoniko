<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join-Page</title>
<link type = "text/css" rel = "stylesheet" href = "../css/join.css">
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<form action="joinproc.ndo?cmd=joinproc" method="post" name="joinForm">
	<div class="JoinBox">

		<div class="joinheader">회원가입 - SignUp Page</div>

			
			<div class="NameForm">
			<div class="name1">이름</div>
			<div class="name2">
				<input type="text" name="name" class="nameform" placeholder="이름을 입력하세요">
			</div>
		</div>
		
			<div class="IDForm">
			<div class="id1">아이디</div>
			<div class="id2">
				<input type="text" name="id" class="idform" placeholder="아이디를 입력하세요">
				<input type="button" class="idcheck" name="checkbotton" value="확인" onclick="idCheck(this.form.id.value)">
				<input type="hidden" name="checkid" value="unchecked">
			</div>
		</div>

		<div class="PasswordForm">
			<div class="pass1">비밀번호</div>
			<div class="pass2">
				<input type="password" name="Password" class="passform" placeholder="비밀번호를 입력하세요">
			</div>
		</div>

		<div class="PasswordcheckForm">
			<div class="Passcheck1">비밀번호 확인</div>
			<div class="Passcheck2">
				<input type="password" name="passwordcheck" class="passCheckform" placeholder="비밀번호를 입력하세요">
			</div>
		</div>

		<div class="EMailForm">
			<div class="email1">이메일</div>
			<div class="email2">
				<input type="text" name="email" class="emailform" placeholder="이메일을 입력하세요">
			</div>
		</div>

		<div class="BirthForm">
			<div class="birth1">생년월일</div>
			<div class="birth2">
			<input type="text" name="cal" class="calform" placeholder="-를 포함해서 입력하세요">
			</div>
			
		</div>
		
		<div class="PhoneForm">
			<div class="phoneform1">전화번호</div>
			<div class="phoneform2">
				<input type = "text" name = "phone1" class="phone" placeholder="-를 포함해서 입력하세요">
			</div>
		</div>
		
		<div class="GenderForm">
			<div class="gender1">성별</div>
			<div class="gender2">
				<div class="genderbox" name="Genderbox">
					<input type="radio" name="gender" value="male">남
					<input type="radio" name="gender" value="female">여
					<input type="radio" name="gender" value="none"> 비공개
				</div>
				
			</div>
		</div>
		
		<div class="RecommForm">
			<div class="rec1">선호하는 여행 스타일 (중복가능)</div>
			<div class="rec2">
				<div class="recbox">
					<input type="checkbox" name="tag" value="r"> 휴양
					<input type="checkbox" name="tag" value="n"> 자연
					<input type="checkbox" name="tag" value="c"> 문화체험
					<input type="checkbox" name="tag" value="a"> 엑티비티
					<input type="checkbox" name="tag" value="f"> 음식
				</div>
			</div>
		</div>
		
		<div class="CommitForm">
			<div class="Buttons">
				<input type="button" value="취소" id="cancel" class="Cancel" onclick="location.href='../main/main.jsp'">
				<input type="button" value="확인" id="joinus" class="joinus" onclick="inputCheck()">
			</div>
			
		</div>
			
			

	</div>
</form>
</body>
</html>