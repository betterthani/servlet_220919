package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String keyword = request.getParameter("keyword");
		
		PrintWriter out = response.getWriter();
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String arr = iter.next();
			// 풀이1) 단어 자체로 split
//			if(arr.contains(keyword)) {
//				String [] words = arr.split(keyword);
//				out.print(words[0] + "<b>"+ keyword +"</b>" + words[1] + "<br>");
//			}
			
			// 풀이2) 단어 replace
			if(arr.contains(keyword)) {
				arr = arr.replace(keyword, "<b>" + keyword + "</b>");
				// 검색어가 있을때 문장 출력
				out.print(arr + "<br>");
			}
		}
	}
}
