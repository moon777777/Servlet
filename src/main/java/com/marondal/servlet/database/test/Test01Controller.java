package com.marondal.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		/*
		try {
			//database 접속
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/moon";
			String id = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, id, password);
			
			// 쿼리수행
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;");
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
			}
			
			statement.close();
			
			statement = connection.createStatement();
			
			/*
			String query = "INSERT INTO `real_estate`\r\n"
					+ "(`realtorId`, `address`, `area`, `type`, `price`, rentPrice)\r\n"
					+ "VALUE\r\n"
					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
			
			// 실행된 행의 개수
			int count = statement.executeUpdate(query);
			
			out.println("삽입결과 : " + count);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		*/
		
		MysqlService mysqlService =  new MysqlService();
		mysqlService.connect();
		/*
		String query = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, rentPrice)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
		int count = mysqlService.update(query);
		
		out.println("삽입결과 : " + count);
		*/
		
		List<Map<String, Object>> realEstateList = mysqlService.select("SELECT * FROM `real_estate`");
		
		for(Map<String, Object> realEstate:realEstateList) {
			String address = (String)realEstate.get("address");
			int area = (Integer)realEstate.get("area");
			
			out.println("매물 주소 : " + address + " 면적 : " + area);
		}
		
		mysqlService.disconnect();
	}
}
