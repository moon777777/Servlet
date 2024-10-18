package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		// charset
		response.setCharacterEncoding("utf-8");
		//MIME
		response.setContentType("text/plain");
		// 결과물
		PrintWriter out = response.getWriter();
		
//		현재 시간은 14시 52분 43초 입니다.
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String dateTimeString = formatter.format(now);
		
		out.println("현재 시간은 " + dateTimeString + " 입니다.");
		
	}

}
