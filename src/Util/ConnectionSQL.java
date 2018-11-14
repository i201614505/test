package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionSQL {

	private final String URL = "jdbc:mysql://localhost:3306/soscli?SSL=false";
	private final String USER = "root";
	private final String PASS = "root";

	public ConnectionSQL(){}

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getCnx(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASS);
			//System.out.println("Usuario : " + USER + "\nContraseña : " + PASS);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public String codU(){
		return PASS;
	}

}
