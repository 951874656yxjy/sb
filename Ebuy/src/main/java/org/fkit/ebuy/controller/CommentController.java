package org.fkit.ebuy.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 处理图书请求控制器
 * */
@Controller
public class CommentController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("commentService")
	private CommentService commentService;

	/**
	 * 处理/main请求
	 * */
//	@RequestMapping(value="/product.comment")
//	 public String main(int pid,
//			 Model model){
//		// 获得所有图书集合
//		List<Comment> comment_list = commentService.getAll(pid);
//		// 将图书集合添加到model当中
//		model.addAttribute("comment_list", comment_list);
//		// 跳转到main页面
//		return "product";
//	}
	@RequestMapping(value="/comment")
	 public String comment(Model model,
			 int id){
		// 获得所有图书集合
		List<Product> product_list = commentService.getAll(id);
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "comment";
	}
	 @RequestMapping(value="/submitcomment",method=RequestMethod.POST)
	 public ModelAndView comment(
			 			int pid,
			 			String username,
						String service,
						String logistics, 
						String quality, 
						String comments,
						String image1,
					   ModelAndView mv,
				     HttpSession session){
	   Comment comment  = commentService.comment(pid,username,service,logistics,quality,comments,image1);
	     mv.setViewName("comment");
			return mv;
	
	 }
	
}
