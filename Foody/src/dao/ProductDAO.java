package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;
import model.Category;

public class ProductDAO {

	private Connection conn;
	private ResultSet rs = null;
	private PreparedStatement ps = null;

	public List<Product> getProductDAO() {
		List<Product> listProduct = new ArrayList<>();

		String searchQuery = "select * from product t";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product t = new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9));
				listProduct.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public List<Category> getCatogoryDAO() {
		List<Category> listCatogory = new ArrayList<>();
		String searchQuery = "select * from cateid t";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			rs = ps.executeQuery();
			while (rs.next()) {
				listCatogory.add(new Category(rs.getInt(1), 
					                          rs.getString(2)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listCatogory;
	}
	
	public List<Product> getProductByCIDDAO(String cid) {
		List<Product> listProductID = new ArrayList<>();
		String searchQuery = "select * from product "
		                            + "where cate_id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product t = new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9));
				listProductID.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProductID;
	}
	
	public Product getProductByIDDAO(String id) {
		String searchQuery = "select * from product "
		                            + "where id=?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Product> getProductByNameDAO(String name) {
		List<Product> listProductID = new ArrayList<>();
		String searchQuery = "select * from product "
		                            + "where name like ?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setString(1, "%"+name+"%");
			rs = ps.executeQuery();
			while (rs.next()) {
				Product t = new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9));
				listProductID.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProductID;
	}
	
	public List<Product> getProductBySellDAO(int id) {
		List<Product> listProductSell = new ArrayList<>();
		String searchQuery = "select * from product "
		                            + "where sell_id= ?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(searchQuery);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product t = new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9));
				listProductSell.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProductSell;
	}
	
	public void deleteProduct(String pid) {
		String sql = "DELETE FROM product WHERE id=?";	
		try {
			conn =  ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, pid);		
			ps.executeUpdate();	
			System.out.println("Sản phẩm đã được xóa");
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public void insertProduct(String name, String address, String time, String price, String des, String url, String catogory, int sellid ) {
		String sql = "INSERT INTO `product`"
				                + "(`name`, `address`, `time`, `price`, `descreption`, `image`, `cate_id`, `sell_id`) "
				                + "VALUES (?,?,?,?,?,?,?,?)";	
		try {
			conn =  ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);	
			ps.setString(2, address);	
			ps.setString(3, time);	
			ps.setString(4, price);
			ps.setString(5, des);	
			ps.setString(6, url);	
			ps.setString(7, catogory);		
			ps.setInt(8, sellid);	
			ps.executeUpdate();	
			System.out.println("Sản phẩm đã được thêm vào");
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public void editProduct(String name, String address, String time, String price, String des, String url, String catogory , String pid) {
		String sql = "UPDATE product SET "
				             + "name=?,address=?,time=?,"
				             + "price= ?,descreption= ?,image=?,cate_id=? "
				             + "WHERE id=?";	
		try {
			conn =  ConnectDB.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);	
			ps.setString(2, address);	
			ps.setString(3, time);	
			ps.setString(4, price);
			ps.setString(5, des);	
			ps.setString(6, url);	
			ps.setString(7, catogory);		
			ps.setString(8, pid);
			ps.executeUpdate();	
			System.out.println("Sản phẩm đã được cập nhật");
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public int getNumber() {
		String query = "select count(*) from product";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(query);			
			rs = ps.executeQuery();
			while (rs.next()) {
				return  rs.getInt(1);
//				int countPage =0;
//				countPage = total/3;
//				if(total %3 !=0) {
//					countPage++;
//				} return countPage;
			}	
     	} catch (SQLException e) {
		     e.printStackTrace();
		}
		return 0;
	}
	
	
	public List<Product> pagingProduct(int index) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM product ORDER BY id LIMIT 9 OFFSET ?";
		try {
			conn = ConnectDB.getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, index);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add( new Product(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getString(4), 
						                rs.getInt(5),
						                rs.getString(6), 
						                rs.getString(7), 
						                rs.getInt(8), 
						                rs.getInt(9)));
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();
		List<Product> listProduct = productDAO.getProductDAO();
		List<Category> listCategories = productDAO.getCatogoryDAO();
//		List<Product> listProductID = productDAO.getProductByCIDDAO("2");
		List<Product> listProductID = productDAO.pagingProduct(10);
//	System.out.println(	productDAO.getNumber());
		for(Product o : listProductID) {
			System.out.println(o);
		}
//		for (Category o : listCategories) {
//			System.out.println(o);
//		}
//		for (Product o : listProductID) {
//			System.out.println(o);
//		}
//     	productDAO.deleteProduct("1");
//		productDAO.insertProduct("Ao thun 1", "1", "2"," 1", "5", "6", "2", 1);
//   		productDAO.editProduct("1", null, null, null, null, null, null,"33");
	}
}