package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	// 여기저기서 접속, 접속끊기를 할 테니까 이게 멤버변수로 존재해야 겠다. 
	private Connection connection;
	
	//DB 접속기능, 쿼리수행기능, DB 접속해제기능
	public boolean connect() { // 접속 실패 성공 을 구분해서 리턴하기.
		
		try {
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
		//접속에 필요한 정보, 주소 포트 DB이름, 사용자이름, 비밀번호
		String url = "jdbc:mysql://localhost:3306/ds04011_2025";
		String username = "root";
		String password = "root";
		
		connection = DriverManager.getConnection(url, username, password);
		
		} catch (SQLException e) {
			e.printStackTrace();
			//접속실패
			return false;
		}
		
		return true;
	}
	
	public boolean disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public ResultSet select(String query) {
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			return resultSet;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;  //진행과정에서 null 의 리턴은 문제가 생겼다는 의미.
		}
		
	}
	
}
