<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// DB 연결
MysqlService ms = MysqlService.getInstance();
ms.connect();

//select query
String selectQuery = "select id,nickname from `seller`";
ResultSet rs = ms.select(selectQuery);
%>
<div class="display-4 pt-3">물건 올리기</div>
<div class="input-box mt-5">

	<form action="/lesson04/quiz03_insert" method="post" id="inputForm">

		<div class="d-flex justify-content-between">
			<select name="selectId" id="sellerId">
				<option value="default">-아이디 선택-</option>
				<%
				// 판매자 아이디 목록들
				while (rs.next()) {
				%>
				<option value="<%=rs.getInt("id")%>"><%=rs.getString("nickname")%></option>
				<%
				}
				%>
			</select> <input type="text" placeholder="제목" name="title"
				class="form-control col-5" id="titleInput">

			<div class="input-group col-3">
				<input type="text" class="form-control" name="price"
					placeholder="가격" id="priceInput">
				<div class="input-group-append">
					<span class="input-group-text">원</span>
				</div>
			</div>
		</div>

		<textarea class="form-control mt-3" rows="5" cols="100"
			name="description"></textarea>

		<div class="input-group mt-3">
			<div class="input-group-prepend">
				<span class="input-group-text">이미지 url</span>
			</div>
			<input type="text" class="form-control" name="imageUrl"> <input
				type="submit" value="저장" class="btn btn-block mt-3">

		</div>
	</form>
</div>
<%
// DB 연결 해제
ms.disconnect();
%>

<script>
	$(document).ready(function() {
		$("#inputForm").on("submit", function () {
			var title =$("titleInput").val();
			var price = $("priceInput").val();
			if ($("#sellerId").val() == "default") {
				alert("판매자를 선택하세요.");
				return false;
			}

			if (title == null || title == "") {
				alert("제목을 입력하세요.");
				return false;
			}

			if (price == null || price == "") {
				alert("가격을 입력하세요.");
				return false;
			}

			return true;
		})
	})
</script>