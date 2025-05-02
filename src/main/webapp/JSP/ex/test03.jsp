<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String option= request.getParameter("option");
		String ss="";
		if(option.equals("time")){
			Date now = new Date();
			SimpleDateFormat formatter2 = new SimpleDateFormat("현재 시간 HH시 mm분 ss초 ");
			ss = formatter2.format(now);	
		}
		else if(option.equals("date")){
			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");
			ss = formatter.format(now);
		}
		
		
	%>
	<h2><%= ss %></h2>
	
	
</body>
</html>