<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>
<%-- 1번 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. --%>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int total : scores) {
			sum += total;
		}
		double average = (double)sum / scores.length;
	%>
<%--2번 아래 채점표로 시험점수가 몇점인지 구하세요. --%>
	<%	
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
		for(String check:scoreList) {
			if(check.equals("O")) {
				score += 10;
			}
		}
	%>
	
<%-- 3번 1부터 n까지의 합계를 구하는 함수 --%>	
	<%!
		
		public int getSum(int n) {
			int sum = 0;
			for(int i=1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
		
	%>
	

<%-- 4번 나이 구하기 --%>
	<%
		String birthDay = "20010820";
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);		
		int age = 2024 - year + 1;
	%>
	
	<h3>점수 평균은 <%= average %> 입니다.</h3>
	<h3>체점 결과는 <%= score %>점 입니다.</h3>
	<h3>1에서 50까지의 합은 <%= getSum(50) %> </h3>
	<h3><%= birthDay %>의 나이는 <%= age %>살 입니다.</h3>
</body>
</html>