<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	<%
		double BMI = 0;
	
		doGet(request, response);
		
		String height = request.getParameter("height");
		double weigth = request.getParameter("weight");
		
		BMI = weight / ((height / 100.0) * (height / 100.0));
		
		if(BMI >= 31){
			
		}
	
	%>
</body>
</html>