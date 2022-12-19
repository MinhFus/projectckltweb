package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

public class UserDAO {

		private Connection conn;
		private ResultSet rs = null;
		private PreparedStatement ps = null;

		public User login(String user, String pass) {
			String sql = "select * from user "
					           + "where username =? "
					           + "and password=?";
			try {
				conn =  ConnectDB.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				while (rs.next()) {
					return new User(rs.getInt(1),
							        rs.getString(2), 
							        rs.getString(3), 
							        rs.getInt(4), 
							        rs.getInt(5));				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		public User checkUser(String user) {
			String sql = "select * from user "
					             + "where username =? ";
					           
			try {
				conn =  ConnectDB.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
				rs = ps.executeQuery();
				System.out.println("Tài Khoản đã tồn tại");
				while (rs.next()) {
					return new User(rs.getInt(1),
							        rs.getString(2), 
							        rs.getString(3), 
							        rs.getInt(4), 
							        rs.getInt(5));				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		public void signUp(String user, String pass) {
			String sql = "insert into user "
					           + "values(0,?,?,0,0)";
			
			try {
				conn =  ConnectDB.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				ps.executeUpdate();	
				System.out.println("Tài Khoản đã được cập nhật");
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		public static void main(String[] args) {
		UserDAO u = new UserDAO();
//	  	System.out.println(u.login("minhphu", "1352"));
//		System.out.println(u.login("hoangtu", "145"));
//		u.signUp("minhphu", "135");
	  	u.checkUser("hoangtu");
	  	
	  	
	  	
		}

}
