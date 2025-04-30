package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>\n"
				+ "<body>\n"
				+ "<ul>\n");
		
		for(int i =0; i < 20; i ++) {
			out.println("<li>"
					+ (i+1) + "번 리스트"
					+ "</li>"  );
		}
		
		out.println("</ul>\n"
				+ "</body>\n"
				+ "</html>\n");
	}
}
