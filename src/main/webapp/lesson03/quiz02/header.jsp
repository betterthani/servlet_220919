<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h2 class="text-success">
	<a href="/lesson03/quiz02/list_template.jsp" id="melong"> Melong</a>
</h2>
<form method="get" action="/lesson03/quiz02/album_template.jsp">
	<div class="d-flex">
		<input type="text" class="ml-3 form-control col-6" name="search">
		<button type="submit" class="btn btn-info">검색</button>
	</div>
</form>