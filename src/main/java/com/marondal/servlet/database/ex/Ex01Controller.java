package com.marondal.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// used_goods 테이블의 모든 행을 조회해서 결과를 response에 담기
		

		try {
			// database접속
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 접속 주소, 포트, id, password
			String url = "jdbc:mysql://localhost:3306/moon";
			String id = "root";
			String password = "root";
			
			Connection connection =  DriverManager.getConnection(url, id, password);
			
			//쿼리수행
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT * FROM `used_goods`;");
			
			// 쿼리 수행 결과 다루기
			while(resultSet.next()) {
				// 제목, 가격, 설명
				// 제목 : ~~ 가격 : ~~원 설명 : ~~
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				String description = resultSet.getString("description");
				
				out.println("제목 : " + title + " 가격 : " + price + "원 설명 : " + description);				
			}
			
			statement.close();
			
			statement = connection.createStatement();
			
			/* 새로고침을 할때마다 실행되서 늘어나기 때문에 다 쓰고나면 주석처리
			String query = "INSERT INTO `used_goods`\r\n"
					+ "(`sellerId`, `title`, `price`, `description`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '고양이 간식 팝니다', 2000, '우리집 고양이가 안먹어서 파라요');";
			
			// 실행된 행의 개수
			int count =  statement.executeUpdate(query);
			
			out.println("삽입결과 : " + count);
			*/
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
		

		
		
		
		
	}
}
