package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02 extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// requset query
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// insert query
		String insertQuery = "insert into `favorite_url`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
		
		// 사용자 목록 화면으로 이동(Redirect)
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
		
	}
}
