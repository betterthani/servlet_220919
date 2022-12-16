package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// content type 생략 - 다른 페이지로 보낼 것이기 때문에(내가 응답을 만들지 않고 다른 페이지에서 만들거기 때문)
		
		// request parameter들 꺼내기
		String name = request.getParameter("name"); // 메소드 실제 수행되는 이곳에서 디버깅 시작
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// new_user 테이블에 insert 쿼리 수행
		String insertQuery = "insert into `new_user`"
				+ "(`name`, `yyyymmdd`, `introduce`, `email`)"
				+ "values"
				+ "('" + name + "', '" + yyyymmdd + "', '" + introduce + "', '" + email + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면으로 이동(Redirect) -> get방식으로 이미 있는 페이지로 보내주는 것
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		
		
	
	}
}
