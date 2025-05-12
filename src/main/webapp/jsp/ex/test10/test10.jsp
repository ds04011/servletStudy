<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>IPTV 채널 목록</title>
</head>
<body>
	
	
	<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
	%>
	
	
	<div id="outer">
		<header>
			<h2 class="text-danger text-center">SK broadband IPTV</h2>
		</header>
		
		<nav class="main-menu bg-danger">
			<ul class="nav nav-fill font-weight-bold">
				<li class="nav-item"><a href="/jsp/ex/test10/test10.jsp" class="nav-link text-white">전체</a></li>
				<li class="nav-item"><a href="/jsp/ex/test10/test10category.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
				<li class="nav-item"><a href="/jsp/ex/test10/test10category.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
				<li class="nav-item"><a href="/jsp/ex/test10/test10category.jsp?category=예능" class="nav-link text-white">예능</a></li>
				<li class="nav-item"><a href="/jsp/ex/test10/test10category.jsp?category=영화" class="nav-link text-white">영화</a></li>
				<li class="nav-item"><a href="/jsp/ex/test10/test10category.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
				
			</ul>
		</nav>
		<!--  
		보니까 반복문을 분리해서, 그러니까 파라미터가 들어올때와 안들어올때, 
		로 경우를 나누어 
		category 파라미터가 null 이면 
		전체 반복문, 아니면 그냥 조건반복문으로 한페이지로도 가능하겠는데, 
		 -->
		<section>
		
			<table class="table text-center">
				<thead>
					<tr>
						<th class="font-weight-bold">채널</th>
						<th class="font-weight-bold">채널명</th>
						<th class="font-weight-bold">카테고리</th>
					</tr>
				</thead>
				<tbody>
					<% for(Map i : list) { %>
					<tr>
						<td><%= i.get("ch")%></td>
						<td><%= i.get("name")%></td>
						<td><%= i.get("category")%></td>
					</tr>
					<%} %>
				</tbody>
			</table>
			
			
		</section>
		
		<footer>
			<div class="sm">Copyright 2021.marondal All Rights Reserved</div>
		</footer>
	
	
	</div>
	
	
	


</body>
</html>