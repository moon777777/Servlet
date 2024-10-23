<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<%
		String numberString = request.getParameter("number");
		String[] unitStringArray = request.getParameterValues("unit");
		
		int number = Integer.parseInt(numberString);
		
		double m = number / 100.0;
		double yd = number / 91.44;
		double ft = number / 30.482;
		double in = number / 2.54;
		
		double result = 0;
		String unitString = "";
		for(int i = 0; i < unitStringArray.length; i++) {		
			if(unitStringArray[i].equals("m")) {
				result = m;
			} else if(unitStringArray[i].equals("ft")) {
				result = ft;
			} else if(unitStringArray[i].equals("yd")) {
				result = yd;
			} else if(unitStringArray[i].equals("in")) {
				result = in;
			}
			unitString += result + unitStringArray[i] + "<br>";			
		}
		
		
	
	%>
	
	<div>
		<h3>변환결과</h3>
		<div><%=number %>cm</div>
		<hr>
		<div><%= unitString %></div>
	</div>
	

</body>
</html>