package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;


/**
 * BookMapper接口
 * */
public interface CommentMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
//	@Select(" select * from tb_comment ")
//	List<Comment> findAll( int pid);
	
	@Select("insert into tb_comment(pid,username,service,logistics,quality,comments,image1) values(#{pid},#{username},#{service},#{logistics},#{quality},#{comments},#{image1})")
	Comment insertcomment(@Param("pid")int pid,@Param("username")String username,@Param("service")String service,@Param("logistics")String logistics,@Param("quality")String quality,
			@Param("comments")String comments,@Param("image1")String image1);
	
	@Select(" select * from tb_product where id=#{id}")
	List<Product> findAll(int id);
}

