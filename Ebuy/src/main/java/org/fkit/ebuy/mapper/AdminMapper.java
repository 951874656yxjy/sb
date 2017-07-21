package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.domain.User;

public interface AdminMapper {
		
		/**
		 * 根据登录名和密码查询用户
		 * @param String loginname
		 * @param String password
		 * @return 找到返回User对象，没有找到返回null
		 * */
		@Select("select * from tb_admin where adminname = #{adminname} and adminpassword = #{adminpassword}")
		Admin findWithLoginnameAndPassword(@Param("adminname")String adminname,@Param("adminpassword") String adminpassword);

		@Select("insert into tb_product(name,price,descripts, image,image2,image3,image4,stock, sales,typeid) values (#{name},#{price},#{descripts},#{image},#{image2},#{image3},#{image4},#{stock},#{sales},#{typeid})")
		Product addproduct(@Param("name")String name,@Param("price")String price,@Param("descripts")String descripts,
				@Param("image")String image,@Param("image2")String image2,@Param("image3")String image3,@Param("image4")String image4,
				@Param("stock")int stock,@Param("sales")int sales,@Param("typeid")int typeid);

		@Select(" select * from tb_order ")
		List<Order> findAll();

		@Select("update tb_order set status=#{status} ,address=#{address},phone=#{phone},totalprice=#{totalprice}, id=#{id} where id=#{id}")
		Order updateorder(@Param("id")int id,@Param("status")String status,@Param("address")String address,@Param("phone")String phone,@Param("totalprice")String totalprice);

		@Select(" select * from tb_product ")
		List<Product> findAll1();
		
		@Select("update tb_product set name=#{name},stock=#{stock},sales=#{sales} where id=#{id}")
		Product updatestock(@Param("id")int id,@Param("name")String name,@Param("stock")String stock,@Param("sales")String sales);

		@Select(" select * from tb_product ")
		List<Product> findAll2();
		
		@Delete("delete from tb_product where id=#{id}")
		void deproduct(int id);
		
		@Select(" select * from tb_user ")
		List<User> findAll3();
		
		@Select(" select * from tb_user ")
		List<User> findAll4();
		
		@Delete("delete from tb_user where id=#{id}")
		void deuser(int id);
		
		@Select(" select * from tb_product ")
		List<Product> findAll5();
		
		@Select("update tb_product set name=#{name},price=#{price},typeid=#{typeid} where id=#{id}")
		Product updatecatagory(@Param("id")int id,@Param("name")String name,@Param("price")String price,@Param("typeid")String typeid);

}
