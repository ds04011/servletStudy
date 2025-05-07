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
	
	<div class = "">
		<form method="post" action="/jsp/ex/test05.jsp">
			<div class ="">
				<h3>길이 변환</h3>
				<div class="d-flex">
					<input type="text" class="form-control col-2" name="cm"> cm
				</div>
				<div>
					<label>인치<input type = "checkbox" name="unit" value="inch"></label>
				    <label>야드<input type = "checkbox" name="unit" value="yard"></label>
				    <label>피트<input type = "checkbox" name="unit" value="feet"></label>
				    <label>미터<input type = "checkbox" name="unit" value="meter"></label>
				</div>
				<button type = "submit" class="btn btn-success ">변환</button>
			</div>
		</form>
	</div>

</body>
</html>