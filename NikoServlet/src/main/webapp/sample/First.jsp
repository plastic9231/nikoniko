<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>JSP Script</h2>
	<% //script 연산 처리 
		String scriptlet = "스크립트릿 입니다..";
		String comment = "주석문 입니다..";
		out.println("내장객체를 이용한 출력 : "+declation+"<br><br>");
	%>
	<%!//변수 선언
		String declation="선언문입니다.";
	%>
	<%!//메소드 선언
		public String declationMethod() {
			return declation;
		}
	%>
	선언문 출력하기(변수) : <%=declation %><br><br>
	선언문 출력하기(메소드) : <%=declationMethod() %><br><br>
	스크립트 출력하기 : <%=scriptlet %><br><br>
	<!-- html 주석 : <%=comment %>%> --><br><br>
	<%-- jsp 주석 : <%=comment %>%> --%><br><br>
</body>
</html>