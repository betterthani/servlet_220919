package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		// request 파라미터 꺼내기
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		
		// 결과 뿌리기(태그)
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>입사지원서</title></head><body>");
		out.print("<b>" + name + "</b>님 지원이 완료 되었습니다.<br>");
		out.print("<h3>지원 내용</h3>");
		out.print(introduction);
		out.print("</body></html>");

	}
}
