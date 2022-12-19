package model;

public class User {
	private int id;
	private String username;
	private String password;
	private int sellIs;
	private int admin;

	public User(int id, String username, String password, int sellIs, int admin) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.sellIs = sellIs;
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public int getSellIs() {
		return sellIs;
	}

	public int getAdmin() {
		return admin;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", sellIs=" + sellIs
				+ ", admin=" + admin + "]";
	}
}
