package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Product;


/**
 * BookMapper接口
 * */
public interface ShopMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
	@Select(" select * from tb_product")
	List<Product> findAll();
	
	@Select(" select * from tb_product where typeid=1")
	List<Product> findAll1();
	
	@Select(" select * from tb_product where typeid=2")
	List<Product> findAll2();
	
	@Select(" select * from tb_product where typeid=3")
	List<Product> findAll3();
	
	@Select(" select * from tb_product where typeid=4")
	List<Product> findAll4();
	
	@Select(" select * from tb_product where id=#{id}")
	List<Product> findAll5(int id);
}
