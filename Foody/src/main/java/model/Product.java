package model;

public class Product {
	private int id;
	private String name;
	private String address;
	private String time;
	private int price;
	private String mota;
	private String image;
	private int cate_id;
	private int sell_id;

	public Product(int id, String name, String address, String time, int price, String mota, String image, int cate_id,
			int sell_id) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.time = time;
		this.price = price;
		this.mota = mota;
		this.image = image;
		this.cate_id = cate_id;
		this.sell_id = sell_id;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getTime() {
		return time;
	}

	public int getPrice() {
		return price;
	}

	public String getMota() {
		return mota;
	}

	public String getImage() {
		return image;
	}

	public int getCate_id() {
		return cate_id;
	}

	public int getSell_id() {
		return sell_id;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", address=" + address + ", time=" + time + ", price=" + price
				+ ", mota=" + mota + ", image=" + image + ", cate_id=" + cate_id + ", sell_id=" + sell_id + "]";
	}

}
