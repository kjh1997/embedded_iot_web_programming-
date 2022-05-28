  package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class BoardDAO {
	private ResultSet rs;
	public int createBoard(String title, String contents, String userID, String datetime, int alive, String type) {
		String sql = "INSERT INTO board VALUES (?, ?, ?, ?, ?,?,?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			int bid = getBID();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,bid);
			pstmt.setString(2,title);
			pstmt.setString(3,contents);
			pstmt.setString(4,datetime);
			pstmt.setInt(5,alive);
			pstmt.setString(6,userID);
			pstmt.setString(7,type);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int getBID() {
		String sql = "select boardid from board order by boardid desc";
		
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1)+1;
			} 
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("test??");
		return -1;
	}
	
	
	public ArrayList<BoardDTO> getBoard() {
		String sql = "select * from board where boardid < ? and alive = 1 order by boardid desc";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 100000);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO data = new BoardDTO();
				data.setBid(rs.getInt(1));
				data.setTitle(rs.getString(2));
				data.setContents(rs.getString(3));
				data.setDatetime(rs.getString(4));
				data.setAlive(rs.getInt(5));
				data.setUser(rs.getString(6));
				data.setType(rs.getString(7));
				System.out.println(data);
				list.add(data);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
