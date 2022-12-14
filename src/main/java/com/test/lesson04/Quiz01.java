package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Quiz01")
public class Quiz01 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");

		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		// DB insert 한 행
//		String insertQuery = "insert into `real_estate`" + "(`realtorId`, `address`, `area`, `type`, `price`)"
//				+ "values" + "(3, '헤라펠리스 101동 5305호', 350, '매매', 	1500000)";
//
//		try {
//			ms.update(insertQuery);
//		} catch (SQLException e1) {
//			e1.printStackTrace();
//		}

		// DB select & 결과 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate`" + "order by `id` desc limit 10";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {
				out.print("매물 주소: " + resultSet.getString("address") + ", ");
				out.print("면적: " + resultSet.getInt("area") + ", ");
				out.println("타입: " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB 해제
		ms.disconnect();

	}
}
