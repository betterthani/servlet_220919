<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- jquery slim 제거-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>

	<%
	int length = Integer.parseInt(request.getParameter("length"));
	// checkbox, 여러 값 getParameterValues()
	String types[] = request.getParameterValues("type");
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=length%>cm</h3>
		<hr>
		
		<h2>
			<%
				if(types != null){
					for(String type : types){ // 다 클릭 했다고 가정 1번 돌면 inch, 다음 야드
						if (type.equals("inch")) {
							double inch = length * 0.393701;
							out.print(inch + "in<br>");
						} else if (type.equals("feet")){
							double feet = length * 0.0328084;
							out.print(feet + "ft<br>");
						} else if (type.equals("yard")){
							double yard = length * 0.0109361;
							out.print(yard +"yd<br>");
						} else if(type.equals("meter")){
							double meter = length * 0.01;
							out.print(meter +"m<br>");
						}
					}
				}
			%>
		
		</h2>

	</div>
</body>
</html>