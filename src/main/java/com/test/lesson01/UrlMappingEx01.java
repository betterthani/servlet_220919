package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// request 요청 받는거 response 요리를 담는것 한꺼번에 들고있음
		// 한글깨짐 방지 (항상 위에 세팅)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); // html했을당시처럼 -> type : text/css
		
		// 출력
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		
		// 날짜 객체(utill import해주기)
		Date now = new Date(); // 현재시간을 now에 담아줌		
		out.println(now); // date 객체를 뿌렸다.(kst: 우리나라 시간 기준)
		
		// formatter (내맘대로 출력 지정해서 출력하기)
		// 2022-11-24 오후 16:49:30
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss"); // a: 오전 오후
		out.println(sdf.format(now));
		
	}
}
