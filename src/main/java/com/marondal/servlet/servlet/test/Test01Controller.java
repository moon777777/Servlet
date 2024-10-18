package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// charset
		response.setCharacterEncoding("utf-8");
		
		// MIME
		response.setContentType("text/plain");
		// 결과물
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
//		오늘의 날짜는 2021년 5월 20일
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateTimeString = formatter.format(now);
		
		out.println("오늘의 날짜는 " + dateTimeString);
	}
	
	
}
