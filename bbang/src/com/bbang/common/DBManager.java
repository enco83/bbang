package com.bbang.common;

/********************************************************
@source: DBManager.java
@description: Connection 객체를 취득, 사용이 끝난자원을
					해제하는 클래서
*******************************************************
DATE				AUTHOR					DESCRIPTION
*******************************************************
2018/07/16			최초롱					최초작성
2018/07/19			박소망					close 메서드 추가
********************************************************/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// 공통으로 사용하니깐 common으로 package 생성

// 싱글톤 패턴을 활용한 공유 방법
// 개발자가 쉽게 개발할 수 있게 도와주는 도구는 프레임워크

public class DBManager {
	
	// 인스턴스의 주소를 저장하기 위한 참조 변수
	private static Connection conn;
	
	// Connection 관련 정보 상수
	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	private final static String USER = "java";
	private final static String PASS = "1234";

	// 생성자를 private으로 만들어 은닉화 시킨다.
	// => 외부에서 인스턴스를 생성하지 못하도록 선언
	// => 이유: 공유해서 사용하려고 하는데 다른 개발자가
	// 객체생성 해서 사용하면 공유의 의미가 없음.
	// (사용자의 실수를 막는 용도)
	public DBManager() {

	}
	
	// 인스턴스를 생성 또는 기존 인스턴스를 반환하는
	public static Connection getConnection() {
		conn = null;

		if (conn == null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL, USER, PASS);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}

	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// insert, delete, update 수행 후 자원해제를 위한 메서드
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

