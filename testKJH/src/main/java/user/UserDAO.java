package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class UserDAO {
//	Database access object
	public int join(String userID, String userPW,String userPN) {
		String sql = "INSERT INTO user VALUES (?, ?, ?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userID);
			pstmt.setString(2,userPW);
			pstmt.setString(3,userPN);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int login(String userID, String userPW) {
		String sql = "select * from user where userID= ? and userPW = ?";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userID);
			pstmt.setString(1,userPW);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}
