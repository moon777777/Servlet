<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

 
</head>
<body>

	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		
		int height = Integer.parseInt(heightString);
		int weight = Integer.parseInt(weightString);
		
		double bmi = weight / ((height / 100.0) * (height / 100.0));
	%>
	
	<%--String result = null;--%>
	<%-- result = "저체중" 요런식으로--%> 
	
	<div class = "container">
	<h1>BMI 측정결과</h1>
	<% if(bmi < 18.5) { %>
		<div class = "display-4">당신은 <span class = "text-info">저체중</span> 입니다.</div>	
	<% } else if (bmi >= 18.5 && bmi < 25) { %>
		<div class = "display-4">당신은 <span class = "text-info">정상</span> 입니다.</div>
	<% } else if (bmi >= 25 && bmi < 30) {  %>
		<div class = "display-4">당신은 <span class = "text-info">과체중</span> 입니다.</div>
	<% } else {  %>
		<div class = "display-4">당신은 <span class = "text-info">비만</span> 입니다.</div>		
	<% } %>
	<div>BMI 수치 : <%= bmi %></div>
	</div>
	
	

	
	

</body>
</html>