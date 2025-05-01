package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String intro = request.getParameter("intro");
		
		
		
		out.println("<html>\n"
				+ "<head><title>" 
				+"면접지원서</title></head>\n"
				+ "<h2>" + name + "님의 지원이 완료되었습니다." + "</h2>"  
				+ "<br>\n"
				+ "<hr>\n"
				+ "<body>"
				+ "지원내용\n <br>"
				+ intro
				+ "</body>"
				+ ""
				+ ""
				+ "</html>");
		
	}
}
