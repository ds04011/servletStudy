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
		<form method="post" action="/jsp/ex/test04.jsp">
			<div class ="d-flex">
				<input type="text" class="form-control col-2" name="num1">
				<select name="cal">
					<option value="addition">+</option>
					<option value="subtraction">-</option>
					<option value="multiplication">X</option>
					<option value="division">/</option>
				</select>	
				<input type="text" class="form-control col-2" name ="num2">
				<button type = "submit" class="btn btn-primary ">연산</button>
			</div>
		</form>
	</div>
	
	
	
	
	
	
	
</body>
</html>