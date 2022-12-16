<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
	a{text-decoration: none;}
	
	.del:link, .del:visited {
     background-color: pink;
     color: white;
     padding: 3px 10px;
     text-align: center;
     text-decoration: none;
     display: inline-block;
}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select
	String selectQuery = "select * from `favorite_url`";
	ResultSet rs = ms.select(selectQuery);
%>
<div class="container">
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th></th>
			</tr>
		</thead>
		<%
			while(rs.next()){
		%>
		
		<tbody>
			<tr>
				<td><%=rs.getString("name") %></td>
				<td><a href="<%=rs.getString("url") %>"><%=rs.getString("url") %></a></td>
				<td><a href="/lesson04/quiz02_delete?id=<%= rs.getInt("id")%>" class="del">삭제 하기</a></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
<%
	//DB 연결 해제
	ms.disconnect();
%>
</div>
</body>
</html>