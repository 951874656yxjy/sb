package org.fkit.ebuy.domain;


public class Cart {
	 private int sid;
    private int product_id;
    private int user_id;
    private String name;
    private String price;
    private String number ;
    private String image;
    private String username;
    

	@Override
	public String toString() {
		return "Cart [product_id=" + product_id + ",sid=" + sid + ",user_id=" + user_id + ", name=" + name + ",  price="
				+ price + " ,number=" + number + ",image=" + image + ",username=" + username + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	
}
