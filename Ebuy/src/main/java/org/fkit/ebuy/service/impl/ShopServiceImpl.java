package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.mapper.ShopMapper;
import org.fkit.ebuy.service.ShopService;
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
@Service("shopService")
public class ShopServiceImpl implements ShopService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private ShopMapper shopMapper;

	/**
	 * BookService接口getAll方法实现
	 * @see { BookService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public List<Product> getAll() {
		
		return shopMapper.findAll();
	}
	
   public List<Product> getAll1() {
		
		return shopMapper.findAll1();
	}
   
   public List<Product> getAll2() {
		
		return shopMapper.findAll2();
	}
   
   public List<Product> getAll3() {
		
		return shopMapper.findAll3();
	}
   
   public List<Product> getAll4() {
		
		return shopMapper.findAll4();
	}
   
   public List<Product> getAll5(int id) {
		
		return shopMapper.findAll5( id);
	}


}
