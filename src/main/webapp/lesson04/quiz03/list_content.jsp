<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="mt-4 d-flex justify-content-center">
<%
// Db 연결
MysqlService ms = MysqlService.getInstance();
ms.connect();

// select query
String selectQuery = "select A.nickname, B.title, B.price, B.pictureUrl from `seller` AS A join `used_goods` AS B on A.id = B.sellerId order by A.id desc";
ResultSet rs = ms.select(selectQuery);
%>
	<div class="d-flex flex-wrap ">
		<%
			while(rs.next()){
				
		%>
		<div class="goods-box mb-3 mr-2">
			<div class="goods-image-box">
			
			<%
				if(rs.getString("pictureUrl") == null|| rs.getString("pictureUrl").equals("")){
					
			%>
				<div class="d-flex h-100 justify-content-center align-items-center">
					<h4 class="text-secondary">이미지 없음</h4>
				</div>
			<%
				} else {
			%>
				<div class="d-flex h-100 justify-content-center align-items-center">
					<img alt="제품 사진" src="<%=rs.getString("pictureUrl")%>" class="w-100">
				</div>
			<%
				}
			%>
			</div>
			<div class="title mt-1"><%=rs.getString("title")%></div>
			<div class="price mt-1"><%=rs.getInt("price")%>원
			</div>
			<div class="seller mt-1"><%=rs.getString("nickname")%></div>
		</div>
		<%
			}
		%>
		</div>
</section>
<%
//Db연결 해제
ms.disconnect();
%>