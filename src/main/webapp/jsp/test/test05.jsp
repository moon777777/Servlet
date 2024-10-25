<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<div class="container">
		<h2>변환 결과</h2>
		
		<%
			int cm = Integer.parseInt(request.getParameter("cm"));
		
			// 인치, 야드, 피트, 미터
			// inch, yard, feet, meter
			String[] units = request.getParameterValues("unit");
			
			String result = "";
			for(int i = 0; i < units.length; i++) {
				String unit = units[i];
				
				if(unit.equals("inch")) {					
					double inch = cm * 0.39;
					result += inch + "in<br>\n";
				} else if(unit.equals("yard")) {
					double yard = cm * 0.010936133;
					result += yard + "yd<br>\n";
				} else if(unit.equals("feet")) {
					double feet = cm * 0.032808399;
					result += feet + "ft<br>\n";
				} else if(unit.equals("meter")) {
					double meter = cm / 100.0;
					result += meter + "m<br>\n";
				}
			}
			
		%>
		
		<h3><%= cm %>cm</h3>
		<hr>
		<h3><%= result %></h3>
	
	</div>
	

</body>
</html>