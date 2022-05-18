package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
//	데이터베이스 연결을 관리함
	public static Connection getConnection() {
		try {
			String dbUrl = "jdbc:mysql://localhost:3306/tutorial";
		    String dbId = "root";
		    String dbPw = "whdgns1002@";
		    
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    
		    return DriverManager.getConnection(dbUrl, dbId, dbPw);
			
		} catch (Exception e) {
			System.out.println(e);
		} 
		return null;
	}
}
