package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
//	�����ͺ��̽� ������ ������
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
