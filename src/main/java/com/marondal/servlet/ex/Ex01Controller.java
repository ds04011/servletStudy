package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		// 결과물에 대한 정보 설정
		// Response Header    음료 포장지? 같은느낌 '음료가 뜨거우니 조심' 이런 정보 라 생각
		// 꼭 해야하는 준비 Character set : utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입 Content type
		// MIME : data type 구분 위한 정해진 문자열 
		response.setContentType("text/plain");
		// 이 외에도 여러 데이터 타입을 response header 에 담을 수 있음
		

		//실제 데이터 
		// Response body 
		PrintWriter out =  response.getWriter();
		out.println("Servlet Response succeeded!");
		
		// 현재날짜 자바util 에 있는거
		Date now = new Date();
		out.println(now);
		
		// date 객체 날짜정보 toString 익숙하게 변경 ,    2025 년 4월 26일 시간 
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss");
		
		String dateTimeString = formatter.format(now);
		out.println(dateTimeString);
		
		
		
		
		
		
	}
}
