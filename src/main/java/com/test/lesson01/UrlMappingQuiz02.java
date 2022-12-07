package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet{ // request가 왔을때 줄 수있는 준비가 되어주는것 확장
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();// 현재시간
		SimpleDateFormat sdf = new SimpleDateFormat("HH시 mm분 ss초"); // 내가 지정한 포맷
		
		
		PrintWriter out = response.getWriter();
		out.print("현재 시간은 " + sdf.format(now) + " 입니다.");
	}
}
