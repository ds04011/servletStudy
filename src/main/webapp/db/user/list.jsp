<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.marondal.common.MysqlService" %>
    <%@ page import = "java.sql.ResultSet" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		String query = "SELECT * FROM `new_user`";
		List<Map<String, Object>> userList= mysqlService.select(query);
		
		mysqlService.disconnect(); // 이미 db에서 가져올 정보를 다 가져와서 리스트로 짜놨으니,
		//냅다 끊어버려도 무관
	%>
	
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>자기소개</th>
			</tr>
		</thead>
			
		<tbody>
			<%for( Map i : userList) {%>
			
			<tr>
				<td><%= i.get("name")%></td>
				<td><%= i.get("email")%></td>
				<td><%= i.get("introduce")%></td>
			</tr>
			
			<%} %>
		</tbody>
	
	</table>
	
	
	
	
	
	
	
</body>
</html>