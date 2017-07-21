package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.mapper.CommentMapper;
import org.fkit.ebuy.service.CommentService;
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
@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private CommentMapper commentMapper;

	/**
	 * BookService接口getAll方法实现
	 * @see { BookService }
	 * */
//	@Transactional(readOnly=true)
//	@Override
//	public List<Comment> getAll(int pid) {
//		
//		return commentMapper.findAll(pid);
//	}
	@Override
	public Comment comment(int pid,String username,String service, String logistics, String quality, String comments, String image1) {
		// TODO Auto-generated method stub
		return commentMapper.insertcomment(pid,username,service,logistics,quality,comments,image1);
	}

	@Override
	public List<Product> getAll(int id) {
		// TODO Auto-generated method stub
		return commentMapper.findAll(id);
	}


}
