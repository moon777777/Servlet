package com.marondal.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/bookmark/delete")
public class bookmarkDelete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		 String name = request.getParameter("name"); // 삭제할 북마크 ID
	        
	        MysqlService mysqlService = new MysqlService();
	        mysqlService.connect();
	        
	        String query = "DELETE FROM `bookmark` WHERE `name` = '" + name + "';";
	        mysqlService.update(query);
	        
	        mysqlService.disconnect();
	        
	        response.sendRedirect("/db/bookmark/list.jsp");
	}
}
