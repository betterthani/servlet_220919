<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h2 class="text-success">
	<a href="/lesson03/quiz02/list_template.jsp" id="melong"> Melong</a>
</h2>
<form method="get" action="/lesson03/quiz02/album_template.jsp">
	<div class="input-group col-12 pl-3">
		<input type="text" class="form-control" name="search" value="<%= request.getParameter("search")%>">
		<div class="input-group-append">
		<button type="submit" class="btn btn-info">검색</button>
		</div>
	</div>
</form>