package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// request 
		String selectId = request.getParameter("selectId");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String imageUrl = request.getParameter("imageUrl");
		String description = request.getParameter("description");
		
		// insert query
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`,`title`,`description`,`price`,`pictureUrl`)"
				+ "values"
				+ "("+ selectId +", '"+ title +"', '"+ description +"', "+ price +", '"+ imageUrl +"')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면 전환
		response.sendRedirect("/lesson04/quiz03/quiz03_1.jsp");
	}
}
