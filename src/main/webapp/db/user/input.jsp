<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사용자 추가</h3>
	
	<form method = "get" action ="/db/user/create">
		<label>이름 : </label><input type="text" name = "name">
		<label>생년월일 : </label><input type="text" name = "birthday">
		<label>이메일 : </label><input type="text" name = "email">
		<button type = "submit">추가</button>	
	</form>

</body>
</html>