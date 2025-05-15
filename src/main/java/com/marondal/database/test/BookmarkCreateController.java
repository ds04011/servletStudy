package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/bookmark/create")
public class BookmarkCreateController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		String query = "Insert into `bookmark`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "Values\r\n"
				+ "('"+name+"', '"+url+"');";
		
		int count = mysqlService.update(query);
		response.sendRedirect("/db/bookmark/list.jsp");
		
	}
}
