package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<html>\n"
				+ "<head><title>포스트 메서드 연습</title></head>\n"
				+ "<body>");
		
		if(!userMap.get("id").equals(id)) {
			out.println("id 가 일치하지 않습니다.");
		}
		else if(userMap.get("id").equals(id)) {
			if(!userMap.get("password").equals(pw)) {
				out.println("비밀번호가 일치하지 않습니다.");
			}
			else if(userMap.get("password").equals(pw)) {
				out.println("<h2>"
						+ userMap.get("name") +"님 환영합니다."
						+ "</h2>");
			}
				
				
		}
		
		out.println("</body></html>");
		
	}
	
	
}
