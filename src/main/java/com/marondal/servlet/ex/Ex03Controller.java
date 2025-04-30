package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		// 요청에 담긴 정보에 따라 다른 페이지 보여주기 
		// 이름과 생년월일 전달받고 html 로 정보구성해서 보여주기
		
		response.setCharacterEncoding("utf-8");
		// response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		int age = 2025 - year + 1;
		
	
		// request 에서 name 이란 이름으로 이름 받아오기, birthday 란 이름으로 생년월일 받아와서 나이 계산하기 
		// 해서 그 정보를 html 에 넣기 

		out.println("{\"name\":\""+ name + "\", \"age\":" + age + "}");
//		out.println("<html>\n"
//				+ "<head><title>정보</title></head>\n"
//				+ "	<body>\n"
//				+ "		<h3>이름 : "+ name +  "</h3>\n"
//				+ "		<h3>나이 : " + age + "</h3>\n"
//				+ "		"
//
//				+ "	</body>\n"
//				+ "</html>\n");

	}
}