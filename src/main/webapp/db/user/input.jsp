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
		<form method="post" action="/db/user/create">
			<div class ="">
				<label>이름</label><input type="text" class="form-control" name="name"><br>
				<label>생년월일</label><input type="text" class="form-control" name="birthday"><br>
				<label>이메일</label><input type="text" class="form-control" name="email"><br>
				<label>자기소개</label><textarea class="form-control" name="introduce" rows="10"></textarea><br>
				<button type = "submit" class="btn btn-primary btn-block">추가</button>
			</div>
		</form>
	</div>

</body>
</html>