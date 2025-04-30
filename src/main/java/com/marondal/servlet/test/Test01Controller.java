package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 dd일");
		String newnow = formatter.format(now);
		out.println(newnow);
		
		SimpleDateFormat formatter2 = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		String detailNow = formatter2.format(now);
		out.println(detailNow);
		
		
		
		
	}
}
