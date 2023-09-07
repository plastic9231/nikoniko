<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rewrite My page</title>
<link type = "text/css" rel = "stylesheet" href = "../css/remypage.css">
<script type="text/javascript" src = "../join/script.js"></script>
</head>
<body>

<form action = "/mypage/remypageProc.ndo" method = "post" name = "regForm">

	<div class="JoinBox">

		<div class="joinheader"> 정보 수정하기 </div>

			
			<div class="NameForm">
			<div class="name1">이름</div>
			<div class="name2">
				<input type="text" name="name" class="nameform" value="${name}" readonly="readonly">
			</div>
			</div>
			
			<div class="IDForm">
			<div class="id1">아이디</div>
			<div class="id2">
				<input type="text" name="id" class="idform" value="${id}" readonly="readonly">
			</div>
		</div>

		<div class="PasswordForm">
			<div class="pass1"> 새 비밀번호</div>
			<div class="pass2">
				<input type="password" name="Password" class="passform" value="${Password }" placeholder="비밀번호를 입력하세요">
			</div>
		</div>

		<div class="PasswordcheckForm">
			<div class="Passcheck1">비밀번호 확인</div>
			<div class="Passcheck2">
				<input type="password" name="passwordcheck" class="passCheckform" value="${Password }" placeholder="비밀번호를 입력하세요">
			</div>
		</div>

		<div class="EMailForm">
			<div class="email1">이메일</div>
			<div class="email2">
				<input type="text" name="email" class="emailform" value="${email }" placeholder="이메일을 입력하세요">
			</div>
		</div>

		<div class="BirthForm">
			<div class="birth1">생년월일</div>
			<div class="birth2">
      		<input type="text" name="cal" class="calform" value="${cal }" placeholder="-를 포함해서 입력하세요">
			</div>
			
		</div>
		
		<div class="PhoneForm">
			<div class="phoneform1">전화번호</div>
			<div class="phoneform2">
				<input type = "text" name = "phone1" class="phone" value="${phone1 }" placeholder="-를 제외하고 입력하세요">
			</div>
		</div>
		
		<div class="GenderForm">
			<div class="gender1">성별</div>
			<div class="gender2">
				<div class="genderbox">
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
					<input type="checkbox" name="tag" value="a"> 액티비티
					<input type="checkbox" name="tag" value="f"> 음식
				</div>
			</div>
		</div>
		
		<div class="CommitForm">
			<div class="Buttons">
				<input type="button" value="취소" id="cancel" class="Cancel" >
				<input type="button" value="수정" id="joinus" class="joinus" onclick="updateCheck()">
			</div>
			
		</div>
			
			

	</div>

</form>

</body>
</html>