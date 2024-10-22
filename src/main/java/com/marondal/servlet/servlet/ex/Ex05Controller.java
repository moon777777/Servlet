package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
	
	// 보안적으로 위험한 데이터를 파라미터로 전달 받을때
	// url 로 표현하기 힘든 큰데이터나 파일을 파라미터로 전달 받을때
	// 이 외에는 다 get을 쓰는게 좋다
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과 생년월일 전달 받고,
		// 이름과 나이를 html로 구성
		// response 내가 여기서 작성할 인코딩
		// request 전달받을 문자의 인코딩
		// get일때는 url을 포함해서 전달 그래서 보안적으로 안좋다 생각해봐라 이름 생년월일 다뜨는데 url에 보안에 좋겠냐?
		

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
