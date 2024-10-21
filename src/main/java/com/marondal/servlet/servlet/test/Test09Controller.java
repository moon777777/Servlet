package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");		
		String coverLetter = request.getParameter("coverLetter");
		
		out.println(""
				+ "<html>"
				+ "	<head><title>test09</title></head>"
				+ "	<body>"
				+ "		<h1>" + name + "님 지원이 완료되었습니다.</h1>"
				+ "		<hr>"
				+ "		<div>지원 내용</div>"
				+ "		<div>" + coverLetter + "</div>"
				+ "	</body>"
				+ "</html>");
	}
	

}
