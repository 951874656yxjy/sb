

package org.fkit.ebuy.controller;

import java.util.List;


import org.fkit.ebuy.domain.Picture;

import org.fkit.ebuy.service.PictureService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class PictureController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("pictureService")
	private PictureService pictureService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/picture")
	 public String look(
		 Model model){
		// 获得所有图书集合
	    List<Picture> p_list = pictureService.getAll();
		model.addAttribute("p_list", p_list);
		
		// 跳转到main页面
		return "picture";
	}
	@RequestMapping(value="/lookpicture2")
	 public String look2(
		 Model model){
		// 获得所有图书集合
	    List<Picture> p_list = pictureService.getAll2();
		model.addAttribute("p_list", p_list);
		
		// 跳转到main页面
		return "lookpicture2";
	}
	
}

