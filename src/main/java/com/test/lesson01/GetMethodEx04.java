package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex04")
public class GetMethodEx04 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter들 꺼내기(name에 있는 request parameter의 key)
		// http://localhost/lesson01/ex04?userId=fdf&name=%EA%B0%95%ED%95%98%EC%9D%80&birth=20201010&email=ssfds%40naver.com
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		// 출력(response.setContentType("text/plain"); 일시)
//		out.println("userId" + userId);
//		out.println("name" + name);
//		out.println("birth" + birth);
//		out.println("email" + email);
		
		// 테이블로 출력
		out.print("<html><head><title>회원 정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table>");
		out.print("</body></html>");
	}

}
