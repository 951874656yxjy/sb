package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Product;


/**
 * Book服务层接口
 * */
public interface ShopService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Product> getAll();

	List<Product> getAll1();
	
	List<Product> getAll2();
	
	List<Product> getAll3();
	
	List<Product> getAll4();
//
	List<Product> getAll5(int id);

	



}
