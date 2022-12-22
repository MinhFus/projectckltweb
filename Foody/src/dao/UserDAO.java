package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;

public class UserDAO {

	private Connection conn;
	private ResultSet rs = null;
	private PreparedStatement ps = null;

	public User login(String user, String pass) {
		String sql = "select * from user " + "where username =? " + "and password=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public User checkUser(String user) {
		String sql = "select * from user " + "where username =? ";

		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			rs = ps.executeQuery();
			System.out.println("Tài Khoản đã tồn tại");
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void signUp(String user, String pass) {
		String sql = "insert into user " + "values(0,?,?,0,0)";

		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
			System.out.println("Tài Khoản đã được cập nhật");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void editPass(int id, String newpass) {
		String sql = "UPDATE user SET password =?" + " where id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, newpass);
			ps.setInt(2, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		UserDAO u = new UserDAO();
		// System.out.println(u.login("minhphu", "1352"));
		// System.out.println(u.login("hoangtu", "145"));
		// u.signUp("minhphu", "135");
		u.checkUser("hoangtu");
	}

	public User findByUserAndEmail(String user) {
		String sql = "select * from `user` where `username`=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void insertUser(String userName, String password) {
		String sql = "INSERT INTO `user`" + " (`id`, `username`, `password`, `sellis`, `admin`)"
				+ " VALUES (0,?,?,0,0)";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, password);
			ps.executeUpdate();
			System.out.println("User da duoc them");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(String uid) {
		String sql = "DELETE FROM user WHERE id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, uid);
			ps.executeUpdate();
			System.out.println("Nguoi dung da duoc xoa");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void editUser(String username, String password, String sellIs, String admin, String idUser) {
		String sql = "UPDATE user SET " + "username=?,password=?,sellIs=?,admin=?" + "WHERE id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, sellIs);
			ps.setString(4, admin);
			ps.setString(5, idUser);
			ps.executeUpdate();
			System.out.println("Thong tin nguoi dung da duoc cap nhat");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getUserDAO() {
		List<User> listUser = new ArrayList<>();

		String searchQuery = "select * from user u";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
				listUser.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUser;
	}

	public User getUserByIDDAO(String id) {
		String searchQuery = "select * from user " + "where id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}