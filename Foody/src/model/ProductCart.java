package model;

import java.io.Serializable;
import java.text.NumberFormat;

public class ProductCart implements Serializable {
	private int serial; // stt
	private Product product;
	private int quantity;

	public ProductCart() {

	}

	public ProductCart(int serial, Product product, int quantity) {
		super();
		this.serial = serial;
		this.product = product;
		this.quantity = quantity;
	}

	public int getSerial() {
		return serial;
	}

	public void setSerial(int serial) {
		this.serial = serial;
	}

	public void setProduct(Product p) {
		product = p;
	}

	public Product getProduct() {
		return product;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTotal() {
		double total = product.getPrice() * quantity;
		return total;
	}

	public String getTotalCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(this.getTotal());
	}

	public int incrementQuanlity() {
		return this.quantity++;
	}
	
	@Override
	public String toString() {
		return "serial: " + serial + ", "  + product.getName() + ", " + product.getPrice() + ", " + "quantity: " + quantity;
	}
}