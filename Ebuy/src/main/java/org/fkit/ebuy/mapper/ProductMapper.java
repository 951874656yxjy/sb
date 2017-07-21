package org.fkit.ebuy.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;

public interface ProductMapper {
	

	@Select(" select * from tb_comment where pid=#{id}")
	List<Comment> findAll2(int pid);
	
	@Select(" select * from tb_product where id=#{id}")
	List<Product> findAll1(int id);
	
//	测设方法
	@Select(" select * from tb_product where id=#{id}")
	List<Product> selectWhitParam(Map<String, Object> param);
}
