package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

public class BookmarkDeleteController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//삭제하는 거 해야하는데, 
		
		
		
		
	}

}
