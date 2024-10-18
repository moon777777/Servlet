package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과 생년월일을 전달 받고,
		// 이름과 나이를 html로 구성
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
		out.println(""
				+ "<html>\n"
				+ "	<head><title>정보</title></head>\n"
				+ "	<body>\n"
				);
		out.println("<h3>이름 : " + name + "</h3> <h3>나이 : " + age + "</h3>");
		
		out.println(""
				+ "	</body>\n"
				+ "</html>"
				);
	}

}
