package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Collect;


/**
 * Book服务层接口
 * */
public interface CollectService {
	
	/**
	 * 
	 * 
	 * 查找所有图书
	 * @return Book对象集合
	 * */

	Collect newcollect(int product_id,String goodsname, String price, String image, String descripts, String username);

	List<Collect> getAll(String username);

	void decollect(int product_id);

}
