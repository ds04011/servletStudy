<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> fruitList = new ArrayList<>();
		fruitList.add("apple");
		fruitList.add("banana");
		fruitList.add("peach");
		
	
	%>
	<!-- 태그형태를 유지하면서 그 안에 반복적으로 값을 집어넣을 수 없나? 
	쉽게 말해서 html 반복문 안되냐고 -->
	<!-- 먼저 중요한건 반복되야 하는 부분 파악, 예를 들면 아래의 경우는 <tr></> 이 반복부분이다. -->
	
	<table border="1">
		<% for(String i : fruitList) { %>
		<tr>
			<td><%= i %></td>
		</tr>
		<% } // 반복문으로 태그를 감싸는 것, 이게 기본적인 html 반복문 형태 %>
	</table>
	
	<%
		// 학생1 {"국어":90, "수학":95, "영어":78}
		// 학생2 {"국어":80, "수학":85, "영어":85}
		
		// [{"국어":90, "수학":95, "영어":78}, {"국어":80, "수학":85, "영어":85}] 를 만들자
		
		Map<String, Integer> scoreMap1 = new HashMap<>();
		scoreMap1.put("국어", 90);
		scoreMap1.put("수학", 95);
		scoreMap1.put("영어", 98);
		Map<String, Integer> scoreMap2 = new HashMap<>();
		scoreMap2.put("국어", 80);
		scoreMap2.put("수학", 85);
		scoreMap2.put("영어", 88);
		
		List<Map> studentScores = new ArrayList<>();
		studentScores.add(scoreMap1);
		studentScores.add(scoreMap2);
	
	
	%>
	
	<table border="1">
	
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>32</td>
				<td>23</td>
				<td>22</td>
			</tr>
			<tr>
				<td>32</td>
				<td>23</td>
				<td>22</td>
			</tr>
			
		</tbody>
		
	</table>
	

</body>
</html>