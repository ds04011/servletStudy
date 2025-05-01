package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet{
	
	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");		
		PrintWriter out = response.getWriter();

		
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		int age = 2024 -(Integer.parseInt(birth.substring(0, 4)));
		
		//이름이 들어나면 안되겠는데? Post method 로 보내자.
		out.println("<html>\n"
				+ "<body>\n"
				+ "이름 : " + name + " 나이 : " + age 
				+ "</body>"
				+ "</html>");
		
		
		
	}
}
