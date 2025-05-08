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
	
	<%
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		double BMI = weight / ((height / 100.0) * (height / 100.0));
		String deter;
		if(BMI < 18.5){
			deter = "저체중";
		}
		else if(BMI < 25){
			deter="정상";
		}
		else if(BMI < 30){
			deter = "과체중";
		}
		else{
			deter = "비만";
		}
		
	%>
	
	<h2>BMI 측정 결과 </h2>
	<div class="d-flex">
		<p class ="display-4">당신은 </p> <p class ="display-4 text-info"><%=deter %><p> <p class ="display-4"> 입니다.</p>
	</div>
	BMI 수치 : <%=BMI %>
	
	
</body>
</html>