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

