<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import= "java.util.List" %>
   <%@ page import= "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 문법</title>
</head>
<body>
	<h1> 기본 문법 </h1>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	
	<%-- 1 ~ 10 합 h3 태그로 --%>
	
	<%
		int sum =0; 
		for(int i =0; i < 10; i ++){
			sum +=1;
			
		}
		//out.println("<h3>sum : " + sum + "</h3>");
	%>
	<%-- out 이라는 객체를 비롯해 여러 자주 사용되는 객체들을 jsp 가 얻어와줌 
	근데 사실 이럴꺼면 jsp 안씀 --%>
	<h3>합계 : <%= sum %></h3>
	<input type="text" value = "<%= sum %>">
	
	
	<%-- 위와같이 html 문법에 거스르는 문장도 아무튼 끼어들어가긴 함 ㅇㅇ --%>
	
	<h3>리스트 만들기</h3>
	<%
		// 동물 이름 리스트
		List<String> animals = new ArrayList<>();
		animals.add("cat");
		animals.add("dog");
	%>
	
	<ul>
		<li><%= animals.get(0) %> </li>
		<li><%= animals.get(1) %> </li>
	</ul>
	
	
	<h3>메소드 만들기</h3>
	
	<%! public String hello(){
			return "hello";
		} 
	%>
	<% String message = hello(); %>
	
	<h3><%=message %></h3>
	<h3><%=hello()%></h3>

	</body>
</html>