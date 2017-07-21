package org.fkit.ebuy.controller;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class ShopController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("shopService")
	private ShopService shopService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/shop")
	 public String shop(Model model){
		// 获得所有图书集合
		List<Product> product_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "shop";
	}
	@RequestMapping(value="/canvasbag")
	 public String canvasbag(Model model){
		// 获得所有图书集合
		List<Product> canvasbag_list = shopService.getAll4();
		// 将图书集合添加到model当中
		model.addAttribute("canvasbag_list", canvasbag_list);
		// 跳转到main页面
		return "canvasbag";
	}
	@RequestMapping(value="/Tshirt")
	 public String Tshirt (Model model){
		// 获得所有图书集合
		List<Product> Tshirt_list = shopService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("Tshirt_list", Tshirt_list);
		// 跳转到main页面
		return "Tshirt";
	}
	@RequestMapping(value="/phoneshell")
	 public String phoneshell(Model model){
		// 获得所有手机壳集合
		List<Product> phoneshell_list = shopService.getAll3();
		// 将手机壳集合添加到model当中
		model.addAttribute("phoneshell_list", phoneshell_list);
		// 跳转到main页面
		return "phoneshell";
	}
	@RequestMapping(value="/sweater")
	 public String sweater(Model model){
		// 获得所有卫衣集合
		List<Product> sweater_list = shopService.getAll2();
		// 将卫衣集合添加到model当中
		model.addAttribute("sweater_list", sweater_list);
		// 跳转到main页面
		return "sweater";
	}
//	@RequestMapping(value="/product")
//	 public String look(int id,
//			 Model model){
//		// 获得所有图书集合
//		List<Product> p_list = shopService.getAll5(id);
//
//		model.addAttribute("p_list", p_list);
//		// 跳转到main页面
//		return "product";
//	}
//	
}
