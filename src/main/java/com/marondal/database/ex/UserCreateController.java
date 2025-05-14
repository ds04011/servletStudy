package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet{
	
	@Override //처음에는 get post 구분이 어려움, 일단 정해
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		
		//		response.setCharacterEncoding("utf-8");

		//		response.setContentType("text/plain");

		//		PrintWriter out = response.getWriter();
		// 왜 다 필요없냐면, 기능만 수행하고 리다이렉트 할꺼니까, 
		
		
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		// 자기소개는 매우 길 수도 있겠는데? --> doPost 로 변경
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "value\r\n"
				+ "('" +name+ "', '"+birthday+"', '"+email+"', '"+introduce+"');";
		
		int count = mysqlService.update(query);
		
		
		
		//redirect : response 에 새롭게 요청할 url 을 전달
//		out.println("실행결과 : " +count);  
		response.sendRedirect("/db/user/list.jsp");
		
		
		
		
		//제대로된 insert 페이지는, 유저가 입력하는 정보로 DB 에 저장되어야 함
		
	}

}
