package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Picture;
import org.fkit.ebuy.mapper.PictureMapper;
import org.fkit.ebuy.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
/**
 * Book服务层接口实现类
 * @Service("bookService")用于将当前类注释为一个Spring的bean，名为bookService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("pictureService")
public class PictureServiceImpl implements PictureService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private PictureMapper pictureMapper;


	@Override
	public List<Picture> getAll() {
		// TODO Auto-generated method stub
		return pictureMapper.findAll();
	}


	@Override
	public List<Picture> getAll2() {
		// TODO Auto-generated method stub
		return pictureMapper.findAll2();
	}

	
}
