<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.marondal.common.MysqlService" %>
    <%@ page import = "java.sql.ResultSet" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String query = "SELECT * FROM `bookmark` Order By `id` desc";
		List<Map<String, Object>> bookmarkList = mysqlService.select(query);
		
		mysqlService.disconnect();
	%>
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				
			</tr>
		</thead>
		<tbody>
		<% for(Map i : bookmarkList) { %>
			<tr>
				<td><%= i.get("name") %></td>
				<td><a href="<%= i.get("url") %>"><%= i.get("url") %></a></td>
				<td><a href="#" class="text-info">삭제</a></td>
			</tr>
			<% } %>
		</tbody>
	
	
	
	</table>
	
	
	
	
	
	
	
</body>
</html>