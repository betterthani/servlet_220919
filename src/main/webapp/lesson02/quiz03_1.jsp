<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	 <!-- bootstrap CDN link -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <!-- jquery slim 제거-->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		double BMI = 0;
		String result;
		
		double height = Double.parseDouble(request.getParameter("height"));
		double weigth = Double.parseDouble(request.getParameter("weight"));
		
		BMI = weigth / ((height / 100.0) * (height / 100.0));
		
		if(BMI >= 31){
			result = "비만";
		} else if(BMI >= 26){
			result = "과제중";
		} else if(BMI >= 21){
			result = "정상";
		}else {
			result = "저체중";
		}
	
	%>
	
	<div class="container">
		<div>
			<h1><b>BMI 측정 결과</b></h1>
			<p class="display-3">당신은 <span class="text-info"><%=result %></span> 입니다.</p>
			<p>BMI 수치 :<%=BMI %></p>
		</div>
		
	</div>
	
</body>
</html>