package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request parameter 꺼내기 (key로 꺼내기)
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		response.setContentType("text/html"); 일때 사용
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age" + age);
		
		// JSON(Javascript Object Notation) : String으로 response 구성하기
		//{"user_id":"marobiana", "name":"강하은", "age":30}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
