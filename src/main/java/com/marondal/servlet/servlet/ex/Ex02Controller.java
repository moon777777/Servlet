package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet {
	
	@Override //이게 annotation
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		// 1 ~ 10 부터 까지의 합 구하고 html 통해서 결과를 표현한다.
		int sum = 0;
		for(int i = 1; i < 11; i++) {
			sum += i;
		}
		
		out.println("<html>\n"
				+"<head><title>합계</title></head>"
				+ "<body>"
				+ "<h2>" + sum + "</h2>"
				+ "</body>"
				+ "<html>");
	}

}
