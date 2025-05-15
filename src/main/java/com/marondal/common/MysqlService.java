package com.marondal.common;

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
	
	// 여기저기서 접속, 접속끊기를 할 테니까 이게 멤버변수로 존재해야 겠다. 
	private Connection connection;
	private static MysqlService mysqlService = null;
	
	public static MysqlService getInstance() {
        if(mysqlService == null) {
            mysqlService = new MysqlService();
        }
        return mysqlService;
    }
	
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
	
	public List<Map<String, Object>> select(String query) {
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
//			statement.close();   이걸 여기서 닫으면 안되는게, resultSet 을 다룬다는것 자체가
			// statement 를 계속 사용하고 있는것, resultSet.next() 가 계속 
			//statement 를 사용하고 있는거야.
			// 사실 resultSet 을 리턴해주는 거 자체가 구조가 안좋음, 모든 작업을 끝내고 결과만 
			// 사용자에게 주는게 모듈화의 핵심!
			
			// 그래서 어떻게하는데? --> 데이터 자체를 Map 의 리스트로 형성해서 돌려주자.
			// 하나의 데이터를 key value 의 map 으로, 그것들을 리스트에 넣어서, 
			
			
			
			// 아니 근데 이 클래스는 말 그대로 DB 와의 상호작용을 위한건데, 
			// 특정 테이블만을 상정하고 만들었음.
			// general 한 기능을 구현해야 함. --> 조회 결과의 컬럼 목록을 알아야 함.
			// 조회 결과의 컬럼 목록 가져오는 방법 meta data
			ResultSetMetaData rsmd = resultSet.getMetaData();
			int columnCount = rsmd.getColumnCount(); // 1. 조회 컬럼 개수 확인
			
			List<String> columnList = new ArrayList<>();  //컬럼 이름 들어갈 리스트.
			for(int i =1 ; i < columnCount; i++) {
				columnList.add(rsmd.getColumnName(i));   		// 2. 컬럼 이름 가져오기  
			}
			
			
			
			
			List<Map<String, Object>> resultList= new ArrayList<>();
			while(resultSet.next()) {
				
				Map<String, Object> row = new HashMap<>();
				// 하나의 행에서 컬럼이름으로 모든 값 얻어오기
				for(String column : columnList) {
					Object value = resultSet.getObject(column);
					row.put(column, value);
					// 컬럼 이름, 값 으로 맵 완성, 
				}
				resultList.add(row); 
			}
			
			
			
			statement.close(); //이제 닫아도 됨. 다 썼으니까. 그리고 실행과정에서는
			//resultSet 을 사용하지 않고, 이 리스트를 이용해서 정보를 출력해야겠지.
			
			return resultList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;  //진행과정에서 null 의 리턴은 문제가 생겼다는 의미.
		}
		
	}
	
	//insert, update, delete
	public int update(String query) {
		
		Statement statement;
		try {
			statement = connection.createStatement();
			int count = statement.executeUpdate(query);
			statement.close();
			return count;
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			return -1;
		}
		
	}
	
	
}
