package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 결과물에 대한 정보 설정
		// Response Header
		// character set : utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입
		// MIME
		// text/plain : 그냥 문자열
		response.setContentType("text/plain");
		
		// 결과물
		// Response Body
		PrintWriter out = response.getWriter();
		
		out.println("URL Mapping 예제");
		
		// 현재 날짜 시간 정보 얻어오기
		Date now = new Date();
		
		out.println(now);
		
		// 원하는 형태의 문자열로 날짜 시간 표현하기
		// yyyy년 mm월 dd일 hh시 mm분 ss초
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
		
		String dateTimeString = formatter.format(now);
		
		out.println(dateTimeString);
	}

}
