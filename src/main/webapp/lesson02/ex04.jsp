<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.concurrent.ConcurrentHashMap.KeySetView"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04 - 제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 구성하기
		// {"korean"=85, "english"=72, "math"=90, "science"=100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
	%>
	
	<table border="1">
	<%
		// Set<String> keys = scoreMap.keySet(); // 순서가 없기때문에 iterator, 향상된 for문으로밖에 사용 못한다.
		// Iterator<String> iter = keys.iterator();
		
		Iterator<String> iter = scoreMap.keySet().iterator();
		while(iter.hasNext()){
			String key = iter.next();
	%>
		<tr>
			<th><%-- <%= key %> --%>
			<%
				if (key.equals("korean")){
					out.print("국어");
				} else if (key.equals("english")){
					out.print("영어");
				} else if (key.equals("math")){
					out.print("수학");
				} else if (key.equals("science")){
					out.print("과학");
				}
			%>	
				
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}
	%>
		
	</table>
</body>
</html>