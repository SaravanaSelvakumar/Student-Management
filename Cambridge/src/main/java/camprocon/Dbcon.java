package camprocon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbcon {
	public static final String url = "jdbc:mysql://localhost:3306/cambridge";
	public static final String username = "root";
	public static final String password = "Saravana$06";

	public static Connection getConnection() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.cj.jdbc.Driver");

		return DriverManager.getConnection(url, username, password);

	}
}
