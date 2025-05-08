<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>jsp 반복문</title>
</head>
<body>
	
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
	
	%>
	
	<%	
		String pointCut = request.getParameter("4pointCut"); //cut
		if(pointCut ==null){
			pointCut = "";
		}
		String menu = request.getParameter("menu");
		List<Map<String, Object>> searchList = new ArrayList<>();
		for(Map i : list){
			if(pointCut.equals("cut")){
				if(i.get("menu").equals(menu) && Double.compare( (Double)(i.get("point")), 4.0 ) > 0 ){
					searchList.add(i);
				}	
			}
			else{
				if(i.get("menu").equals(menu)){
					searchList.add(i);
				}
			}
			
		}
		// 이제 searchList 에 원하는 가게 map 이 들어있음.
	%>
	
	<h3 class="text-center">검색 결과</h3>
	<table class="table text-center">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		<tbody>
			<% for(Map i :searchList) {%>
			<tr>
				<td><%= i.get("menu") %></td>
				<td><%= i.get("name") %></td>
				<td><%= i.get("point") %></td>
			</tr>
			<% } %>
		</tbody>
	
	</table>
	
	
	

</body>
</html>