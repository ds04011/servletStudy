<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post input</title>
</head>
<body>
	
	
	<form method ="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type = "text" name="nickname">
		
		<h4>좋아하는 동물 고르세요.</h4>
		<label>cat<input type="radio" name="animal" value="cat" checked></label>
		<label>sheep<input type="radio" name="animal" value="sheep"></label>
		<label>dog<input type="radio" name="animal" value="dog"></label>
		<!--  원래 라디오 버튼을 묶어주는게 name 속성인데, 이게 form 내에서 파라미터 이름 역할도 동시에
		하는것  -->
		
		<h4>좋아하는 과일</h4>
		<select name="fruit">
			<option value="banana">banana나나바</option>
			<option value="apple">apple사과</option>
			<option value="peach">peach복숭이</option>
		</select>
		<!--  밸류 값으로 실제 전달값 조정 가능, 사용자들에게 보이는 값과는 다를 수 있음.-->
		<br>
		
		
		<h4>좋아하는 음식 모두 고르디</h4>
		<select>
			<label>banana<input type="radio" name="fruit" value="banana" checked></label>
			<label>apple<input type="radio" name="fruit" value="apple"></label>
			<label>peach<input type="radio" name="fruit" value="peach"></label>
		</select>
		<button type ="submit">check</button>
	</form>
	



</body>
</html>