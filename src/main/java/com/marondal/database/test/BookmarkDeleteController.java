package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;


@WebServlet("/db/bookmark/delete")
public class BookmarkDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		// 파라미터 로 id 를 받아오고 싶으니까, Get 으로 바꾸고, 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//삭제하는 거 해야하는데, 
		// 여기로 정보가 오면, 또는 id 가 오면, 
		// 그거 기반에서 쿼리 짜서 delete 하는 형태로 하자. 
		// 이미 update 에서 기능을 수행할 수 있으니까, 받아서 쿼리를 구성하면 되지않을까?
		
		String id = request.getParameter("id");
		
		String query = "DELETE from `bookmark` where id="+ id +";";
		mysqlService.update(query);
		response.sendRedirect("/db/bookmark/list.jsp");
		
		
		
	}

}
