package board;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class BoardDAO {
	public int createBoard(String title, String contents, String author,String datetime, ) {
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
}
