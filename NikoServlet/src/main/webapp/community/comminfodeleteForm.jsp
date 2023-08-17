<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/comminfodeleteForm.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

	<main>
		<div align="center">
		<b>공지사항 글 삭제</b>
		<br><br>
		<form action="#" method="post" name="delForm" onsubmit="return deleteSave()">
			<table border="1" align="center" cellpadding="0" cellspacing="0" width="360" class="commrecdelete">
				<tr height="30">
					<td align="center">
						<b>비밀번호를 입력해주세요.</b>
					</td>
				</tr>
		
				<tr height="30">
					<td align="center">
						비밀번호 :
						<input type="password" name="pass" size="10" maxlength="12">
						<input type="hidden" name="num">
					</td>
				</tr>
		
				<tr height="30">
					<td align="center">
						<input type="submit" value="글삭제">
						<input type="button" value="글목록" onclick="#">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</main>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
