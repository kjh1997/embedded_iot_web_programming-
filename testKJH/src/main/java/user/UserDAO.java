package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	public boolean login(String userID, String userPW) {
		String sql = "select * from user where userid= ? and userpw = ?";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userID);
			pstmt.setString(2,userPW);
			ResultSet rs = pstmt.executeQuery();
			return rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
