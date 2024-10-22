<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시간</title>
</head>
<body>
	
	<%
		String timeString = request.getParameter("time");
		String todayString = request.getParameter("today");
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat formatter2 = new SimpleDateFormat("HH시 mm분 ss초");
		
		String time = formatter2.format(now);
		
	%>
	// 이페이지에서 하나의 파라미터로 가능
	<h1>현재 시간 <%= time %></h1>
	<h1>현재 시간 <%= time %></h1>
	

</body>
</html>