package sqa.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDatabase {
	Connection conn;
	public ConnectionDatabase() {
		// TODO Auto-generated constructor stub
	}
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		String dbUsername="root";
		String dbPassword=""; //your password database
		String hostname="localhost";
		String dbName="dbsqa";
		String dbUrl = "jdbc:mysql://" + hostname + ":3306/" + dbName;;
		String dbClass = "com.mysql.jdbc.Driver";
		Class.forName(dbClass);
		conn=DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
		return conn;
	}
	
}
