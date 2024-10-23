<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시간</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<%
		Date now = new Date();
		SimpleDateFormat dateformatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		SimpleDateFormat timeformatter = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초");
		
		String date = dateformatter.format(now);
		String time = timeformatter.format(now);
		
		// 어떤 정보를 보여줄지 파라미터를 통해 전달 받는다.
		// 시간을 보여줄지, 날짜를 보여줄지
		// what : time - 시간, date - 날짜
		
		String what = request.getParameter("what");
		
		String result = null;
		if(what.equals("time")) {
			result = time;
		} else if(what.equals("date")) {
			result = date;
		}
	%>
	
	<div class = "container">
		<div class = "display-4"><%= result %></div>
	</div>
		

</body>
</html>