package com.marondal.database.ex;

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

@WebServlet("/db/test")
public class Ex01Controller extends HttpServlet {
	
	@Override 
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
	
		PrintWriter out = response.getWriter();
	
	try {
		//db 접속
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
		//접속에 필요한 정보, 주소 포트 DB이름, 사용자이름, 비밀번호
		String url = "jdbc:mysql://localhost:3306/ds04011_2025";
		String username = "root";
		String password = "root";
		
	
		Connection connection = DriverManager.getConnection(url, username, password);
		
		// Select 쿼리 작성 
		String query = "SELECT * FROM `used_goods`";
		
		//쿼리수행         , java.sql connection 머시기 간결한거 import 
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(query);
		
		//		resultSet.next();
		
		while(resultSet.next()) {
			// 제목 : ~~  ,  가격 : ~~  , 설명 : ~~  이렇게 가져올 수 있게 하는거
			String title = resultSet.getString("title");
			int price = resultSet.getInt("price");
			String description = resultSet.getString("description");
			
			out.println("제목 : " + title + "가격 : " + price + " 설명 : " + description);
		}
		
		statement.close();
		
		// Insert 쿼리 작성
		//미리 "" 만들어두고 이 사이에 DB 문장 복붙하면 깔끔하게 됨
//		query= "INSERT `used_goods`\r\n"
//				+ "(`sellerId`, `title`, `price`, `description`)\r\n"
//				+ "value\r\n"
//				+ "(4, '냥이 간식 팝니다. ', 20000, '먹다 남긴 냥이 캔 한세트 입니다.');";
//		
		statement = connection.createStatement();
		
		//INSERT UPDATE DELETE 의 경우는 아래의 메서드를 사용한다.
		// 실행된 행의 개수가 리턴됨
		//호출될 때 마다 계속 DB 에 넣어지니까 조심조심,,
//		int count = statement.executeUpdate(query);
//		out.println("실행 결과 : " + count);
		statement.close();
		
		
		connection.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
