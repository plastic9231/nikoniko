function idCheck(id){
	if(id =="" || id.length==0){
		alert("아이디를 입력해 주세요.");
		document.joinForm.id.focus();
	}else{
		url="idcheck.ndo?cmd=idCheck&id="+id;
		window.open(url, "post", "width=300, heigh=150");
	}
	
}


function inputCheck(){
	
	if(document.joinForm.name.value==""){
		alert("이름을 입력해 주세요.");
		document.joinForm.name.focus();
		return; //중지
	}
	if(document.joinForm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.joinForm.id.focus();
		return; //중지
	}
	if(document.joinForm.passwordcheck.value==""){
		alert("비밀번호를 확인해 주세요.");
		document.joinForm.passwordcheck.focus();
		return; //중지
	}
	if(document.joinForm.passwordcheck.value !=document.joinForm.Password.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.joinForm.passwordcheck.focus();
		return; //중지
	}
	if(document.joinForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.joinForm.email.focus();
		return; //중지
	}
	if(document.joinForm.cal.value==""){
		alert("생년월일을 입력해 주세요.");
		document.joinForm.cal.focus();
		return; //중지
	}
	if(document.joinForm.phone1.value==""){
		alert("전화번호를 입력해 주세요.");
		document.joinForm.phone1.focus();
		return; //중지
	}
	if(document.joinForm.gender.value==""){
		alert("성별을 선택해 주세요.");
		document.joinForm.gender.focus();
		return; //중지
	}
	if 
		(document.joinForm.tag[0].checked==false&&
		document.joinForm.tag[1].checked==false&&
		document.joinForm.tag[2].checked==false&&
		document.joinForm.tag[3].checked==false&&
		document.joinForm.tag[4].checked==false&&
		document.joinForm.tag[5].checked==false) {
		alert("여행 스타일을 선택해 주세요.");
		return;
		}


	
	var str=document.joinForm.email.value;
	var atPos=str.indexOf('@');
	var atLastPos=str.lastIndexOf('@');
	var dotPos=str.indexOf('.');
	var spacePos=str.indexOf(' ');
	var commaPos=str.indexOf(',');
	var emailSize=str.length;
	
	if(atPos>1&&atPos==atLastPos&&dotPos>3&&spacePos==-1&&commaPos==-1&&atPos+1<dotPos&&dotPos+1<emailSize){
	}
	else{
		alert('Email 주소 형식이 잘못되었습니다.\n\r 다시 입력해 주세요.');
		document.joinForm.email.focus();
	
		return;
	}

	document.joinForm.submit();
	
}

function updateCheck(){

	if(document.joinForm.Password.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.joinForm.Password.focus();
		return; //중지
	}
	if(document.joinForm.passwordcheck.value==""){
		alert("비밀번호를 확인해 주세요.");
		document.joinForm.passwordcheck.focus();
		return; //중지
	}
	if(document.joinForm.passwordcheck.value !=document.regForm.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.joinForm.passwordcheck.focus();
		return; //중지
	}
	if(document.joinForm.phone1.value==""){
		alert("전화번호를 입력해 주세요.");
		document.joinForm.phone1.focus();
		return; //중지
	}
	if(document.joinForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.joinForm.email.focus();
		return; //중지
	}
	
	var str=document.joinForm.email.value;
	var atPos=str.indexOf('@');
	var atLastPos=str.lastIndexOf('@');
	var dotPos=str.indexOf('.');
	var spacePos=str.indexOf(' ');
	var commaPos=str.indexOf(',');
	var emailSize=str.length;
	
	if(atPos>1&&atPos==atLastPos&&dotPos>3&&spacePos==-1&&commaPos==-1&&atPos+1<dotPos&&dotPos+1<emailSize){
	}
	else{
		alert('E-mail 주소 형식이 잘못되었습니다.\n\r 다시 입력해 주세요.');
		document.joinForm.email.focus();
	
		return;
	}

	document.joinForm.submit();
	
	}
function begin(){
	document.joinForm.Password.focus();
}
	
function checkIt(){
	if(!document.joinForm.Password.value){
		alert("비밀번호를 입력하지 않았습니다.");
		document.joinForm.Password.focus();
		return false;
	}
}