package board;

public class BoardDTO {
	private int bid;
	private String title;
	private String contents;
	private String datetime;
	private String user;
	private int alive;
	
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getBid() {
		return bid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getAlive() {
		return alive;
	}
	public void setAlive(int alive) {
		this.alive = alive;
	}
}
