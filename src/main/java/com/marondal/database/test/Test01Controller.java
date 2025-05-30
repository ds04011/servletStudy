package com.marondal.database.test;

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


@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			//접속에 필요한 정보, 주소 포트 DB이름, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/ds04011_2025";
			String username = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, username, password);
			
			String query = "INSERT `real_estate`\r\n"
					+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
					+ "value\r\n"
					+ "(3, '헤라팰리스 101동 3005호', 350, '매매', 1500000, null);";
			
			Statement statement = connection.createStatement();
//			int count = statement.executeUpdate(query);
//			out.println("실행 횟수 : " + count);
			statement.close();
			
			query = "SELECT * FROM `real_estate` order by `id` limit 10;";
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " +area + " 타입 : " + type);
			}
			
			statement.close();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
