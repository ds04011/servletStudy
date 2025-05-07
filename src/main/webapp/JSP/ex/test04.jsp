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
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 =Integer.parseInt( request.getParameter("num2"));
		String cal = request.getParameter("cal");
		int result = 0;
		String symbol ="";
		if(cal.equals("addition")){
			result = num1 + num2;
			symbol="+";
		}
		else if(cal.equals("subtraction")){
			result = num1 - num2;
			symbol="-";
		}
		else if(cal.equals("multiplication")){
			result = num1 * num2;
			symbol="X";
		}
		else if(cal.equals("division")){
			result = num1 / num2;
			symbol="/";
		}
		
	
		
	
	
	%>
	
	<div>
		<h2> 계산 결과</h2>
		<div class="display-4"> <%= num1 %> <%= symbol%> <%= num2%> = <span class="text-primary"><%= result %></span></div>
	</div>
	
	
	

</body>
</html>