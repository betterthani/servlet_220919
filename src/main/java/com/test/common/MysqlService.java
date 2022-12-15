package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MysqlService {
	// 필드
	private static MysqlService mysqlService = null;
	
	private String url = "jdbc:mysql://localhost:3306/db_220919"; // 도메인 뒤에 접속할 데이터베이스명까지 넣는다.
	private String id = "root";
	private String pw = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	
	// 메소드
	
	// Singleton 패턴 : MysqlService라는 객체가 단 하나만 생성 될 수 있도록 하는 디자인 패턴
	// DB 연결을 여러 객체에서 하지 않도록 하기 위해 한다.
	public static MysqlService getInstance() { // 위에 mysqlServie줘
		if (mysqlService == null) { // 처음으로 주는거면 null , 두번째는 null아님
			mysqlService = new MysqlService(); //처음에 객체생성
		}
		return mysqlService; // 리턴함. , 받은 그대로 리턴
	}
	
	// DB 접속
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(url, id, pw);
			
			// 3. statement : DB와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB 연결 해제 (접속 순서 반대방향으로 끊어준다)
	public void disconnect() {
		try { // 요청자가 제어할 수 없으므로, 해당 곳에서 예외 처리해준다.
			statement.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// R   /   CUD 
	
	// R : select
	public ResultSet select (String query) throws SQLException {
		res = statement.executeQuery(query); // 쿼리문을 만든 곳에서 잘못했을 수 있으므로 위로 예외처리 던진다.
		return res;
	}
	
	// CUD : insert, update, delete -> 리턴 값 없다.
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
