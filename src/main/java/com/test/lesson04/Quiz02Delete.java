package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02Delete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// requset query 
		int id = Integer.parseInt(request.getParameter("id"));
		
		// delete query
		String deleteQuery = "delete from `favorite_url` where `id` =" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
		
	
	}
}
