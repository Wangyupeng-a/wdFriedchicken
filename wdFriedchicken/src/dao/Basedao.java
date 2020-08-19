package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Basedao {
	protected Connection conn;
	protected PreparedStatement pst;
	protected ResultSet rs;
	protected Statement s;

	public Connection getconn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// System.out.println("123");
			String dbURL = "jdbc:mysql://localhost/wddwork?useUnicode=true&characterEncoding=utf-8";
			String username = "root";
			String userpwd = "root";
			conn = DriverManager.getConnection(dbURL, username, userpwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}

	public void closeAll() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (s != null) {
			try {
				s.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
