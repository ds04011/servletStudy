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
	
	<div class = "container">
		<form method="get" action="/jsp/ex/test02.jsp">
			<input type = "text" name = "height"><label class = "fs-4">cm</label>
			<input type = "text" name = "weight"><label class = "fs-4">kg</label>
			<button type = "submit" class = "btn btn-info">check</button>
		</form>
	</div>
	
	
	
</body>
</html>