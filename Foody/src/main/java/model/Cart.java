package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private static ArrayList<ProductCart> items;

    public Cart() {
        items = new ArrayList<ProductCart>();
    }

    public ArrayList<ProductCart> getItems() {
        return items;
    }

    //tong so mon an trong cart
    public static int getCount() {
    	//return items.size();
    	int count = 0;
        for (int i = 0; i < items.size(); i++) {
        	ProductCart productCart = items.get(i);
        	count += productCart.getQuantity();
 
        }
        return count;
    }
    
    //so thu tu
    public int serial(){
    	int serial = 0 ;
    	for (int i = 0; i < items.size(); i++) {
    		ProductCart productCart = items.get(i);
            serial = items.indexOf(productCart);
        }
    	return serial + 1;
    }

    //tong so tien
    public static double totalAll(){
    	double totalAll = 0.0;
    	for (int i = 0; i < items.size(); i++) {
        	ProductCart productCart = items.get(i);
            totalAll += productCart.getTotal();
        }
    	return totalAll;
    }
    
    //them mon an vao cart
    public void addItem(ProductCart item) {
        int id = item.getProduct().getId();
        int quantity = item.getQuantity();
        for (int i = 0; i < items.size(); i++) {
        	ProductCart productCart = items.get(i);
            if (productCart.getProduct().getId() == id) {
                productCart.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    //xoa mon an vao cart
    public void removeItem(ProductCart item) {
        int id = item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
        	ProductCart productCart = items.get(i);
            if (productCart.getProduct().getId() == id) {
                items.remove(i);
                return;
            }
        }
    }
}
