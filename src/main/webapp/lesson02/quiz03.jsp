<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격조건</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	 <!-- bootstrap CDN link -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <!-- jquery slim 제거-->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
			<h1>체격 조건 입력</h1>
		<form method="get" action="/lesson02/quiz03_1.jsp">
			<%-- form태그는 데이터에 보내는 기능적 요소로 div를 따로 만들어서 d-flex효과 준다. --%>
			<div class="form-group d-flex align-items-center">
				
				<input type="text" placeholder="키를 입력하세요." class="form-control col-2" name="height">
				<p class="m-1 pt-3"> cm </p>
				<input type="text" placeholder="몸무게를 입력하세요." class="form-control col-2 ml-2" name="weight">
				<p class="m-1 pt-3"> kg </p>
				
				<!-- <input type="submit" class="btn btn-info ml-2" vlaue="계산"> -->
				<button class="btn btn-info ml-3">계산</button>
			</div>
		</form>
	</div>

</body>
</html>