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
	<h2 class="">즐겨찾기 추가 </h2>
		<form method= "post" action="/db/bookmark/create">
			<div class="">
				<label>사이트 이름 : </label><input type="text" name= "name" class="form-control col-2">
				<label>사이트 주소 : </label><input type="text" name="url" class="form-control col-6 mt-1">
				<button type="submit" class="btn  btn-success mt-2">추가</button>
			</div>
		</form>
	</div>
	
	
	
	
	
	

</body>
</html>