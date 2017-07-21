package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;





/**
 * Book服务层接口
 * */
public interface OrderService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Order> getAll(String username);



	Order insertorder(String username, String totalprice, String phone, String address, String status, String good_name,
			int good_id, String good_picture, String number);



	List<Order> getAll2(int id);


//
//	List<Product> getAll3(int id);

	
	

}

