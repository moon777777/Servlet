<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작</title>
</head>
<body>

	<h2>1. 기본 문법</h2>
	<!-- html 주석 화면에는 안나오지만 소스에는 나옴 -->
	<%-- jsp 주석 화면과 소스 모두 안나옴 --%>
	
	<%-- 1부터 10까지의 합을 h3태그로 구성 --%>
	<%
		int sum = 0;
		for(int i = 0; i <= 10; i++) {
			sum += i;
		}
	%>
	<h3>합계 : <%= sum %></h3>
	
	<input type = "text" value = "<%= sum %>">
	
	<div><%= sum * 2 %></div>

</body>
</html>