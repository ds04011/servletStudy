<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>책 보는 페이지</title>
</head>
<body>
	
	<%
	 List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
        } 
    };
    list.add(map);
	
	%>
	<% %>
	
	<h2 class="text-center">책 목록</h2>
	<table class="table text-center">
		<thead>
			<tr>
				<th>id</th>
				<th>표지</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
		
			<%for(Map i : list){ %>
			<tr>
				<td><%= i.get("id") %></td>
				<td><image width="100px" id="" alt="" src=<%=i.get("image") %>></td>
				<td><h2 class="text-primary"><a href="/jsp/ex/test08<%=i.get("id") %>.jsp"><%= i.get("title") %></a></h2></td>
			</tr>
			<%} %>
			
		</tbody>
	
	</table>
	
	<!--  그니까, 주소에 정보를 담아서 보내버리기, 이건 ok
	궁금한건, 미리 만든페이지에서도 이 정보를 받아서 쓰려면, form 태그형태의 정보전달이 필요한데,
	그렇게 하는건지, 아니면 그냥 주소정도만 받아서 보내는건지가 궁금한거다. 
	간단하게 말해서 form 태그를 쓰는건지, a 태그 href 를 쓰는건지? 
	a태그  href 면, 상세페이지의 주소를 맵정보로 짜서 반복문 주소로 넣으면되고
	form 태그면, hidden 속성으로 정보를 담는다? -->
	
	

</body>
</html>