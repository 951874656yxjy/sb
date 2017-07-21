package org.fkit.ebuy.domain;

public class Collect {
	
	private int product_id;
    private int id;
    private int user_id;
    private String goodsname;
    private String price;
    private String image;
    private String descripts;
    private String username;
  
 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescripts() {
		return descripts;
	}
	public void setDescripts(String descripts) {
		this.descripts = descripts;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Collect [product_id=" + product_id + ",id=" + id + ",user_id=" + user_id + " ,goodsname=" + goodsname + ",price="
				+ price + ", image=" + image + ",descripts=" + descripts + ",username=" + username +"]";
	}


	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
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
