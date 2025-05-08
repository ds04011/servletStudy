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
	
	<div class="container">
		<form method="post" action="/jsp/ex/test07.jsp">
			<h2>메뉴 검색</h2>
			<div class="d-flex">
				<input type="text" class="form-control col-3 " name="menu">
				<label class="mt-3 ml-1"><input type="checkbox" name="4pointCut" value="cut">4점 이하 제외</label>
			</div>	
				<button type="submit" class="btn btn-success ">검색</button>
		</form>
	
	
	</div>
	
	
	
	
</body>
</html>