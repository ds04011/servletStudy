<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.Arrays"%>
    <%@page import="java.util.Map"%>
    <%@page import="java.util.HashMap"%>
    <%@page import="java.util.Set"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String[] unitArray = request.getParameterValues("unit");
		int cm = Integer.parseInt(request.getParameter("cm"));
		
		
		//Map<String, Double> converts = new HashMap<>();
		String sentence = "";
		List<String> unitList = new ArrayList<>(Arrays.asList(unitArray));
		if(unitList.contains("inch")){
			sentence +=   (cm/2.54) + "inch<br> "  ;
		}
		if(unitList.contains("yard")){
			sentence += (cm/91.44) + "yard<br> "  ;
		}
		if(unitList.contains("feet")){
			sentence +=   (cm/30.48) + "feet<br> " ;	
		}
		if(unitList.contains("meter")){
			sentence +=   (cm/100.0) + "meter"  ;
		}
		
		
		// 호출을 하려면, 변수에 저장되어야 한다. 
		//키 리스트로 가져오고, 
		
		// Set<String> keys = converts.keySet();
		// List<String> keyList = new ArrayList<>(keys);
		
		// 몇개가 있는지 모르는 상태에서 어떻게 호출을 하지?
		// <%=%  이거에는 '값' 만 호출 가능, 반복문을 넣을 수 없어
		// 자바에서 html 을 넣는 것은, 반복문 돌리고 그 안에 html 을 반복시키는게 가능한데,
		// jsp 에서는 그게 안되네?
		
				
				//필요한것 : 단위명, 단위값 이렇게 필요한데, 둘다 맵에 들어있음
				// 다만 뭐가 몇개가 들어있는지 모르기 때문에 함부로 호출 할 수 없음
				// 자바 반복문으로 for(~~ i : list){} 이렇게 하면 쉬운데, 이게 안되니까,
				
		// <br> 태그가 문자열에 포함되어있어도 html 은 그걸 읽어내니까, 
		// 아예 문자열을에 <br> 을 더해버리면 되겠네.
	%>
	
	
	<h2>변환 결과</h2>
	<h3><%= cm %>cm</h3>
	<hr>
	<h3>
		<%=sentence %>
	</h3>
	
	
	
</body>
</html>