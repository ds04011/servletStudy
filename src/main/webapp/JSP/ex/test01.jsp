<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List" %>
    <%@page import="java.util.Arrays" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<h3>1. 점수 평균</h3>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0; 
		for (int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		sum /= scores.length;
	%>
	<h5>점수 평균 : <%= sum %></h5>
	
	<h3>2. 채점결과</h3>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(int i =0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				score += (100/scoreList.size());
			}
		}
	
	%>
	<h5>채점 결과 : <%= score %></h5>
	
	<h3>3. 1~n 합계 함수 </h3>
	
	<%!
		public int sum(int n){
			int sum =0;
			for(int i = 1; i <= n; i ++){
				sum +=i;
			}
			return sum;
		}
	%>
	<h3>1부터 50까지 합</h3>
	<%= sum(50) %>
	
	
	<h4>4. 나이 구하기</h4>
	
	<% 
	String birthDay = "20010820";
	int age = 2024 -Integer.parseInt(birthDay.substring(0, 4));
	%>
	<h5>나이는 : <%=age %></h5>


</body>
</html>