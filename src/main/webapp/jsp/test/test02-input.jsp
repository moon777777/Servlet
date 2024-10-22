<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class = "container">
		<h2>체격 조건 입력</h2>
		<form method="get" action="/jsp/test/test02.jsp">
			<input type="text" name = "height"> <label> cm</label>
			<input type="text" name = "weight"> <label> kg</label>
			<button type = "submit" class = "btn btn-info ml-3">계산</button>	
		</form>
	</div>

</body>
</html>