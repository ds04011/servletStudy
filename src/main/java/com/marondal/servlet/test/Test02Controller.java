package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test02")
public class Test02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<h2> [단독] 고양이가 야옹해 </h2>\n"
				+ "	</head>\n"
				+ ""
				+ "<body>\n"
				+ "	기사 입력 시간 : 2021/03/27 06:07:04\n"
				+ "</body>\n"
				+ "<hr>\n"
				+ "끝\n"
				+ "</html> ");
		
		
		
	}

}
