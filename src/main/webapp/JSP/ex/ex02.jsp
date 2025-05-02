<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 이름과 생년월일 전달 받고 이름과 나이를 table 로 구성 --%>
	
	<%
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		int age = 2024 -Integer.parseInt(birthday.substring(0, 4));
		
		
	%>
	
	
	
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=name %></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><%=age %></td>
		</tr>
	
	</table>
	
</body>
</html>