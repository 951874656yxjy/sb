package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Product;



/**
 * Book服务层接口
 * */
public interface CartService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Cart> getAll(String username);

	Cart newcart(int product_id,String name, String price, String image, int number,  String username);

	void decart(int product_id);



	Cart Findone(int product_id, String username);


	Cart updatecart(int product_id, String username, int number);

	Cart updatenumber(int product_id, String username, int number);

	
	

}
