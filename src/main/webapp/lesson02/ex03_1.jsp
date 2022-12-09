<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03_1 - Post Method</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal"); // 선택 값이 한개일때는 getparameter사용
		String foodArr[] = request.getParameterValues("food"); // 선택 항목이 여러개 일때 getParameterValues사용
		String fruit = request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickname %></td>
		</tr>
		
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal %></td>
		</tr>
		
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%
	
					String result = "";
					
					if(foodArr != null){
						for (String food : foodArr) {
							result += food + ",";
						}
						// out.print(result);
						
						// 맨 뒤에 붙은 콤마 제거
						// 민트초코,피자,    => substring
						result = result.substring(0, result.length()-1);
					}
				%>
				
				<%=result %>
			</td>
		</tr>
		
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>
	</table>
</body>
</html>