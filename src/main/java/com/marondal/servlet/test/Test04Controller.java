package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		
		out.println("<http>\n"
				+ "	<head><title>url 파라미터 연습문제</title></head>\n"
				+ "	<body>\n");
		
		for(int i = 1; i <= 9; i++) {
			out.println("<h3>" +dan + " x " + i + " = " + (dan * i) + "</h3>" );
			out.println("");//<br>
		}
		
		out.println("	</body>\n"
				+ "</http>");
	}
}
