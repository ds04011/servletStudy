<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>날짜 시간 링크</h2>
	
	<div class = "container d-flex m-0">
		<form method = "get" action = "/jsp/ex/test03.jsp" class = "">
			<button type = "submit" class = "btn btn-info" name="option" value="time">현재 시간 확인</button>
			<button type = "submit" class = "btn btn-success" name="option" value="date">현재 날짜 확인</button>
		</form>
	
	</div>
	
	<div class="container  m-0">
		<h2>날짜 시간 링크</h2>
		<a href  = "/jsp/ex/test03.jsp?option=time" class = "btn btn-success">현재 시간 확인</a>
		<a href  = "/jsp/ex/test03.jsp?option=date" class = "btn btn-info">현재 날짜 확인</a>
	</div>
	
	
	
	
</body>
</html>