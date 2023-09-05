function writeSave() {
	
	if(document.writeForm.subject.value=="") {
		alert("제목을 입력해 주세요.");
		document.writeForm.subject.focus();
		return false;
	}
	
	if(document.writeForm.writer.value=="") {
		alert("작성자를 입력해 주세요.");
		document.writeForm.writer.focus();
		return false;
	}
	
	if(document.writeForm.content.value=="") {
		alert("내용을 입력해 주세요.");
		document.writeForm.content.focus();	
		return false;
	}
	
	if(document.writeForm.pass.value=="") {
		alert("비밀번호를 입력해 주세요.");
		document.writeForm.pass.focus();
		return false;
	}
}	
	
function check() {
	if(document.find_frm.find_box.value==""){
		alert("검색어를 입력해 주세요.");
		return false;
	}
}

/*
function frm_sub(i) {
	i_frm.action="/community/comminfo.ndo?pageNum=" + i;
	i_frm.submit();
}
*/

function frm_sub(pageNum, find, find_box) {
    var form = document.i_frm;
    form.action = "/community/comminfo.ndo?pageNum=" + pageNum;
    form.find.value = find;
    form.find_box.value = find_box;
    form.submit();
}

function fra_sub(pageNum, find, find_box) {
    var form = document.i_frm;
    form.action = "/community/commask.ndo?pageNum=" + pageNum;
    form.find.value = find;
    form.find_box.value = find_box;
    form.submit();
}

function frr_sub(pageNum, find, find_box) {
    var form = document.i_frm;
    form.action = "/community/commrec.ndo?pageNum=" + pageNum;
    form.find.value = find;
    form.find_box.value = find_box;
    form.submit();
}

function commentSave(){
	
	if(document.commentForm.nickname.value=="") {
		alert("닉네임을 입력해 주세요.");
		document.writeForm.nickname.focus();
		return false;
	}
	
	if(document.commentForm.content.value=="") {
		alert("내용을 입력해 주세요.");
		document.writeForm.content.focus();	
		return false;
	}
	
	if(document.commentForm.password.value=="") {
		alert("비밀번호를 입력해 주세요.");
		document.writeForm.password.focus();
		return false;
	}
}

function checkFileExtension(event) {
    var fileInput = event.target;
    var filePath = fileInput.value;
    var allowedExtensions = /(\.png)$/i; // 정규식으로 허용되는 확장자 설정

    if (!allowedExtensions.exec(filePath)) {
        alert('Invalid file type. Only .png files are allowed.');
        fileInput.value = ''; // input 값을 초기화
        return false;
    }
}

