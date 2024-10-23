<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>

	<%
		String nickname = request.getParameter("nickname");
	%>
	
	<h3><%= nickname %></h3>

</body>
</html>