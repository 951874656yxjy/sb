package org.fkit.ebuy.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.domain.User;


/**
 * BookMapper接口
 * */
public interface CartMapper {

	/**
	 * 查询所有图书
	 * @param username 
	 * @return 图书对象集合
	 * */
	@Select(" select * from tb_cart where username=#{username} ")
	List<Cart> findAll(String username);
	
	@Select("insert into tb_cart(product_id,name,price,image,number,username) values(#{product_id},#{name},#{price},#{image},#{number},#{username})")
	Cart newcart(@Param("product_id")int product_id,@Param("name")String name,@Param("price")String price,@Param("image")String image,@Param("number")String number,
			@Param("username")String username);
	
	@Delete("delete from tb_cart where product_id=#{product_id}")
	void decart(int product_id);
	
	@Select("update tb_cart set number=#{number} where product_id=#{product_id} and username=#{username}")
	Cart updatecart(@Param("product_id")int product_id,@Param("username")String username,@Param("number")String number);
	
	

	
	
	
	//	测试
	@Delete("delete from tb_cart where product_id=#{product_id} and username=#{username}")
	void deleteCart(Map<String, Object> param);

	@Select("update tb_cart set number=#{number} where product_id=#{product_id} and username=#{username}")
	void updateCart2(Cart e);
	
	@Select(" select * from tb_cart where username=#{username} ")
	List<Cart> selectWhitParam(Map<String, Object> param);
	
	@Select(" select * from tb_cart where product_id=#{product_id} and username=#{username} ")
	Cart selectCartWithUsername(Map<String, Object> param);


	}
