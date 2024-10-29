package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {
	
	private Connection connection;
	
	// 접속 기능
	public void connect() {
		// 데이터베이스 접속
		
		try {
			//database 접속
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/moon";
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
		}		
	}
	
	// 접속 해제 기능
	public void disconnect() {
		
		try {			
			connection.close();
		}  catch (SQLException e) {			
			e.printStackTrace();
		}	
	}
	
	// 조회 쿼리 수행 기능
	public List<Map<String, Object>> select(String query) {
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			// 조회된 결과의 컬럼 목록
			ResultSetMetaData rsmd = resultSet.getMetaData();
			int columnCount = rsmd.getColumnCount();
			
			// 컬럼 이름 리스트
			List<String> columnList = new ArrayList<>();
			for(int i = 1; i <= columnCount; i++) {
				columnList.add(rsmd.getColumnName(i));
			}
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			
			while(resultSet.next()) {
				Map<String, Object> resultMap = new HashMap<>();
				// 컬럼 이름을 통해 resultSet이 가르키는 행으로 부터 Object 형태의 값을 얻어 오고
				// 해당 컬럼 이름을 키로 얻어온 값을 맵에 저장한다.
				for(String column:columnList) {
					Object value = resultSet.getObject(column);
					resultMap.put(column, value);
				}
				
				resultList.add(resultMap);
			}
			statement.close();
			return resultList;
			
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
			return null;			
		}
		
	}
	
	// 삽입, 수정, 삭제 쿼리 수행 기능
	public int update(String query) {
		
		try {
			Statement statement = connection.createStatement();
			int count = statement.executeUpdate(query);
			statement.close();
			return count;
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}	
	}
		
	
	

}
