package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Order;
import model.Product;

public class OrderDAO {
	private Connection conn;
	private ResultSet rs = null;
	private PreparedStatement ps = null;

	public List<Order> getOrderDAO() {
		List<Order> listOrder = new ArrayList<>();

		String searchQuery = "select * from order o";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			rs = ps.executeQuery();
			while (rs.next()) {
				Order o = new Order(rs.getInt(1), 
									rs.getString(2), 
									rs.getDouble(3), 
									rs.getString(4), 
									rs.getInt(5),
									rs.getString(6), 
									rs.getString(7), 
									rs.getString(8), 
									rs.getString(9));
				listOrder.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOrder;
	}

	public void addOrder(String status, double totalAll, String detailOrder, int idUser, String fullName, String address,
			String phone, String note) {
		String query = "INSERT INTO `order` (`idOrder`,`status`,`totalAll`,`detailOrder`,`idUser`,`fullName`,`address`,`phone`,`note`) VALUES (0,?,?,?,?,?,?,?,?)";	
		try {
			conn =  ConnectDB.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, status);	
			ps.setDouble(2, totalAll);	
			ps.setString(3, detailOrder);
			ps.setInt(4, idUser);	
			ps.setString(5, fullName);	
			ps.setString(6, address);	
			ps.setString(7, phone);
			ps.setString(8, note);		
			ps.executeUpdate();	
			System.out.println("Don hang da duoc them");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Order getOrderIDDAO(int id) {
		String searchQuery = "select * from `order` where idUser=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Order(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(3), 
						rs.getString(4), 
						rs.getInt(5),
						rs.getString(6), 
						rs.getString(7), 
						rs.getString(8), 
						rs.getString(9));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
