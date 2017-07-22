package org.fkit.ebuy.controller;


import java.util.List;

import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;

import org.fkit.ebuy.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class ProductController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("productService")
	private ProductService productService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/product")
	 public String look(int id,
		   int pid,
			 Model model){
		// 获得所有图书集合
		List<Product> p_list = productService.getAll1(id);
	    List<Comment> comment_list = productService.getAll2(pid);
		model.addAttribute("p_list", p_list);
		model.addAttribute("comment_list", comment_list);
		// 跳转到main页面
		return "product";
	}
	
}