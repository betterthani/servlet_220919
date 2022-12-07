package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02") // 같은 패키지내 겹치지 않는 이름으로 사용해야한다 (xml페이지에 mapping역할이랑 동일)
public class UrlMappingEx02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 서블릿 : 자바 + html
		// 1 ~ 10까지의 합계
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		// out.println(sum); // plain에서는 ln이 먹히지만 html에서는 먹히지 않는다. print이든 println이든 같다.
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계:<strong>" + sum + "</strong>");
		out.print("</body></<html>");
	}
}
