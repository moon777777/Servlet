package com.marondal.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/user/create")
public class UserController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response.setContentType("text/plain");
		
		// PrintWriter out = response.getWriter();
		
		// 이름, 생년월일, 이메일 주소를 parameter로 전달 받는다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"', '" + birthday +"', '" + email + "');";
		
		int count = mysqlService.update(query);
		
//		out.println(query);
//		out.println("삽입결과 : " + count);
		
		// response - 클라이언트야 list.jsp에 새로운 요청을 하렴
		// redirect
		response.sendRedirect("/db/user/list.jsp");
		
		
		
		
		
		
	}

}
