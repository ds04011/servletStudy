<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method</title>
</head>
<body>
	
	<% 
		// 닉 전달받고 그대로 보여준다
		String nickname = request.getParameter("nickname");
		
		// text  인풋은, form 과 submit 으로 전달받는다는것, 이해했다.
		// 그러면 다른 select , radio 등의 다양한 input 태그들은 어떻게 받아낼까?
		String animal = request.getParameter("animal");
		
		//좋아하는 과일 하나 
		String fruit = request.getParameter("fruit");
		
		//좋아하는 음식 모두 전달 받기, 배열로 여러 값을 쭈욱 다 받아오는 것
		String[] foodArray = request.getParameterValues("food");
		String foods= "";
		for(String i : foodArray){
			foods += foods + i + " ";
			
		}
		
		
	%>
	
	<h3> 닉네임은 <%=nickname %></h3>
	<h3> 동물은 <%=animal %></h3>
	<h3> 과일은 <%=fruit%></h3>
	<h3> 음식은 <%= foods%></h3>
	
</body>
</html>