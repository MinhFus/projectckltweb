package model;

import java.util.List;

public class Order {
	private int idOrder;
	private String status;
	private double totalAll;
//	private List<OrderDetail> orderDetail;
	private String detailOrder;
	private int idUser;
	private String fullName;
	private String address;
	private String phone;
	private String note;

	public Order() {
	}
	
//	public Order(int idOrder, String status, double totalAll, List<OrderDetail> orderDetail, int idUser,
//			String fullName, String address, String phone, String note) {
//		super();
//		this.idOrder = idOrder;
//		this.status = status;
//		this.totalAll = totalAll;
//		this.orderDetail = orderDetail;
//		this.idUser = idUser;
//		this.fullName = fullName;
//		this.address = address;
//		this.phone = phone;
//		this.note = note;
//	}
	
	public Order(int idOrder, String status, double totalAll, String detailOrder, int idUser,
			String fullName, String address, String phone, String note) {
		super();
		this.idOrder = idOrder;
		this.status = status;
		this.totalAll = totalAll;
		this.detailOrder = detailOrder;
		this.idUser = idUser;
		this.fullName = fullName;
		this.address = address;
		this.phone = phone;
		this.note = note;
	}
	
	public String getDetailOrder() {
		return detailOrder;
	}

	public void setDetailOrder(String detailOrder) {
		this.detailOrder = detailOrder;
	}

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getTotalAll() {
		return totalAll;
	}

	public void setTotalAll(double totalAll) {
		this.totalAll = totalAll;
	}

//	public List<OrderDetail> getOrderDetail() {
//		return orderDetail;
//	}
//
//	public void setOrderDetail(List<OrderDetail> orderDetail) {
//		this.orderDetail = orderDetail;
//	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Order [idOrder=" + idOrder + ", status=" + status + ", totalAll=" + totalAll + ", detailOrder="
				+ detailOrder + ", idUser=" + idUser + ", fullName=" + fullName + ", address=" + address + ", phone="
				+ phone + ", note=" + note + "]";
	}
}
