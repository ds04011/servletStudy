<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href ="style.css">
<meta charset="UTF-8">
<title>멜롱 연습</title>
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
	
	<div id="wrap" class="">
		<header class=" d-flex">
			<div class="logo  d-flex align-items-center">
				<h1 class="text-success"><a href="/jsp/ex/test11/test11.jsp" class="text-success">Melong</a></h1>	
			</div>
			
			<div class="search d-flex align-items-center">
				<form method="get" action="/jsp/ex/test11/test11detail.jsp">
				<!--  form 태그는 인라인, 인풋그룹은 블락 속성 그래서 어그러짐 
				그래서 form 에 클래스 w-100 같은 걸 넣어줘야 크기가 조정이 됨  -->
					<div class="input-group col-11">
						<input type="text" class="form-control " name="title">
						<div class="input-group-append">
							<button class="btn btn-success" type="submit">검색</button>
						</div>
					</div>
				</form>
				<!-- 
				검색창에 들어가있는 걸 가져와. -> 어떻게 가져오지?
				form 태그로 detail 에 곡 이름으로 보내, 
				결국 디테일 페이지는 두개의 파라미터를 받아내는 페이지인데, 둘 중 하나만 있을때 작동하게 해야함. 
				
				디테일 페이지에서 들어온 파라미터를 판별하고, 이에 맞는 자바 코드로
				반복문을 돌려서 원하는 데이터만 보여주기  
				
				 -->
				
				
			</div>
			
		</header>
		
		
		<nav class="main-menu ">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		
		
		<section class="contents ">
			<div class="artist d-flex border border-success p-3">
				<div>
					<img width="150" src="<%= artistInfo.get("photo")%>">
				</div>
				<div class="ml-3">
					<h2><%= artistInfo.get("name") %></h2>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debute") %>년 데뷔</div>
				</div>
			</div>
			
			<div class="song-list">
				<h3>곡 목록</h3>
				<table class="table table-sm text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					
						<% for(Map i : musicList) { %>
						<tr>
							<td><%= i.get("id") %></td>
							<td><a href="/jsp/ex/test11/test11detail.jsp?id=<%= i.get("id") %>"><%= i.get("title") %></a></td>
							<td><%= i.get("album") %></td>
						</tr>
						<% } %>
						
					</tbody>
				</table>
			
			</div>
			
		</section>
		
		
		<footer class="">
			<hr>
			<div class="text-secondary smtext">Copyright 2025 Melong All rights reserved.</div>
		</footer>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>