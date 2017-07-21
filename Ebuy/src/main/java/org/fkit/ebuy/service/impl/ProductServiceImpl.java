package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.mapper.ProductMapper;
import org.fkit.ebuy.service.ProductService;
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
@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private ProductMapper productMapper;

	@Override
	public List<Comment> getAll2(int pid) {
		// TODO Auto-generated method stub
		return productMapper.findAll2(pid);
	}

	@Override
	public List<Product> getAll1(int id) {
		// TODO Auto-generated method stub
		return productMapper.findAll1(id);
	}

	
}
