package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.mapper.CollectMapper;
import org.fkit.ebuy.service.CollectService;
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
@Service("collectService")
public class CollectServiceImpl implements CollectService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private CollectMapper collectMapper;

	/**
	 * BookService接口getAll方法实现
	 * @see { BookService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public List<Collect> getAll(String username) {
		
		return collectMapper.findAll(username);
	}

	@Override
	public Collect newcollect(int product_id,String goodsname, String price, String image, String descripts, String username) {
		// TODO Auto-generated method stub
		return collectMapper.insertcollect(product_id,goodsname, price,image,descripts,username);
	}

	@Override
	public void decollect(int product_id) {
		// TODO Auto-generated method stub
	 collectMapper.decollect(product_id);
	}

}
