<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/commaskwriteForm.css">
    <link rel="stylesheet" href="../css/footer.css">
    <script type="text/javascript" src=commscript.js></script>
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

	<main>
		<div align="center"><b>문의 글쓰기</b></div><br><br>
		<form action="/community/commaskwritePro.ndo" name="writeForm" method="post" onsubmit="return writeSave()">
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="ref" value="${ref}">
		<input type="hidden" name="step" value="${step}">
		<input type="hidden" name="depth" value="${depth}">
			
		<table width="1000" border="1" cellpadding="0" cellspacing="0" align="center" class="commaskwrite">

			
			<tr>
				<td width="100"align="center">제목</td>
				<td width="900">
					<input type="text" size="50" maxlength="50" name="subject" >
				</td>
			</tr>

			<tr>
				<td width="100"align="center">작성자</td>
				<td width="300">
					<input type="text" size="12" maxlength="12" name="writer">
				</td>
			</tr>

			<tr>
				<td width="100" align="center">내용</td>
				<td width="300">
					<textarea rows="13" cols="50" name="content"></textarea>
				</td>
			</tr>

			<tr>
				<td width="100" align="center">비밀번호</td>
				<td width="300">
					<input type="password" size="10" maxlength="10" name="pass">
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글쓰기">
					<input type="reset" value="다시작성">
					<input type="button" value="글목록" onclick="window.location='/community/commask.ndo'">
				</td>
			</tr>

		</table>
		</form>
	</main>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
