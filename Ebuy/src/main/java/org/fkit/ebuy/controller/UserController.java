package org.fkit.ebuy.controller;

import javax.servlet.http.HttpSession;

import org.fkit.ebuy.controller.UserController;
import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 处理/login请求
	 * */
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	 public ModelAndView register(
						String loginname,
						String password, 
						String username, 
						String email,
						String phonenumber,
					   ModelAndView mv ){
	   User register  = userService.register(loginname, password,username,email,phonenumber);
		   if(register == null){
			  
				// 注册成功，将user对象设置到HttpSession作用范围域
//				session.setAttribute("register", register);
				// 转发到loginForm请求
				mv.setViewName("loginForm");
			}
			else{
				// 注册失败，设置失败提示信息，并跳转到注册页面
				mv.addObject("message", "注册失败，请重新注册!");
				mv.setViewName("register");
			}
			return mv;
	 }
	
	@RequestMapping(value="/login" )
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		User user = userService.login(loginname, password);
		if(user != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到main请求
			mv.setView(new RedirectView("/Ebuy/main"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	@RequestMapping(value="/findpassword",method=RequestMethod.POST)
	public ModelAndView find(String username,
			String loginname,
			String email,
			String phonenumber,
		ModelAndView mv,
		HttpSession session){
		User user1=userService.protect(username, loginname,email,phonenumber);
		if(user1!=null){
			session.setAttribute("user1", user1);
			mv.setViewName("readuser");
		}
		else{
			mv.addObject("message","验证失败！");
			mv.setViewName("findpassword");
		}
		return mv;
	}
	@RequestMapping(value="/newpwd",method=RequestMethod.POST)
	public ModelAndView update(
			String loginname,
			String username,
			String email,
			String phonenumber,
			String password,	
		ModelAndView mv,
		HttpSession session){
		User user2=userService.update(loginname,username,email,phonenumber,password);
//		if(user2!=null){
//			session.setAttribute("user2", user2);
//			
//		}
//		else{
//			mv.addObject("message","修改密码失败！");
//			mv.setViewName("newpassword");
//		}
		mv.setViewName("success");
		return mv;
	}
	 
}
	
	

