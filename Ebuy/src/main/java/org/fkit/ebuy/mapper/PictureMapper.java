package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Picture;


public interface PictureMapper {
	

	@Select(" select * from tb_picture ")
	List<Picture> findAll();

	@Select(" select * from tb_picture ")
	List<Picture> findAll2();

}
