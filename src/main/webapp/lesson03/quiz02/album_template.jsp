<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     
<style>
header {height: 100px;}

nav {height: 50px;}

footer {height: 30px;}

a, a:hover {text-decoration: none;}

#melong{color:green;}

.box{height: 80px; font-size: 10px;}

.up{height: 175;}
.down{height: 175;}

</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center">
			<jsp:include page="header.jsp"/>
		</header>

		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp"/>
		</nav>

		<section class="content">
			<jsp:include page="album.jsp"/>
		</section>
		<hr>
		<footer class="pl-2">
			<jsp:include page="footer.jsp"/>
		</footer>
	</div>
</body>
</html>