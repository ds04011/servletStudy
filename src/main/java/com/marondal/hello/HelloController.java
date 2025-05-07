package com.marondal.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HelloController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out =  response.getWriter();  //ioe exception 
		
		out.println("Hello world!");
		List<String> strList = new ArrayList<>(Arrays.asList());
		Map<String, Double> convertsMap = new HashMap<>();
	}

}
