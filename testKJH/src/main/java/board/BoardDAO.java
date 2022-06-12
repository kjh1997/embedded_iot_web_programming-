package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class BoardDAO {
	private ResultSet rs;
	
	public int modifyBoard(String title, String contents, String type, String pn, String contentType, String bid) {
		String sql = "UPDATE board SET title = ?, context = ?, type = ?, contentType = ?, "
				+ "pnum = ? WHERE boardid = "+bid;
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,title);
			pstmt.setString(2,contents);
			pstmt.setString(3,type);
			pstmt.setString(4,contentType);
			pstmt.setString(5, pn);
			System.out.println("수정 테스트");
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int createBoard(String title, String contents, String userID, String datetime, int alive, String type, String pn, String contentType) {
		String sql = "INSERT INTO board VALUES (?, ?, ?, ?, ?,?,?,?,?)";
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
			pstmt.setString(8,pn);
			pstmt.setString(9, contentType);
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
		return -1;
	}
	public BoardDTO getBoardOne(String bid) {
		String sql = "select * from board where boardid = ?";
		
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			BoardDTO data = new BoardDTO();
			while(rs.next()) {
				
				data.setBid(rs.getInt(1));
				data.setTitle(rs.getString(2));
				data.setContents(rs.getString(3));
				data.setDatetime(rs.getString(4));
				data.setAlive(rs.getInt(5));
				data.setUser(rs.getString(6));
				data.setType(rs.getString(7));
				data.setPn(rs.getString(8));
				
			}
			return data;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public ArrayList<BoardDTO> getBoard() {
		String sql = "select * from board where boardid < ? and alive = 1 and contentType = 'job' order by boardid desc";
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
				list.add(data);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<BoardDTO> getBoard2() {
		String sql = "select * from board where boardid < ? and alive = 1 and contentType = 'peo' order by boardid desc";
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
				list.add(data);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
