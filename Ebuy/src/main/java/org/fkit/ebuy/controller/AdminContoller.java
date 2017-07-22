package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AdminContoller {
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;

	@RequestMapping(value="/adminlogin" )
	 public ModelAndView adminlogin(
			 String adminname,
			 String adminpassword,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		Admin admin = adminService.adminlogin(adminname, adminpassword);
		 if(admin != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("admin", admin);
			// 转发到main请求
			mv.setView(new RedirectView("/Ebuy/admin"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录失败，请重新输入!");
			mv.setViewName("adminloginForm");
		}
		return mv;
	}
//	添加商品
	 @RequestMapping(value="/addproduct",method=RequestMethod.POST)
	 public ModelAndView addproduct(
				     String name,
				     String price,
				     String descripts,
				     String image,
				     String image2,
				     String image3,
				     String image4,
				     int stock, //库存
				     int sales,  //销量
				     int typeid,
					 ModelAndView mv,
				     HttpSession session){
	   Product addproduct  = adminService.addproduct (name,price,descripts,image,image2,image3,image4,stock, sales,typeid);
	     mv.setViewName("addproductsuccess");
			return mv;
	
	 }
//  查看订单
	 @RequestMapping(value="/lookorder")
	 public String lookorder(Model model){
		// 获得所有图书集合
		List<Order> order_list = adminService.getAll();
		
		// 将图书集合添加到model当中
	
		model.addAttribute("order_list", order_list);
		// 跳转到main页面
		return "lookorder";
	} 
	 
	 @RequestMapping(value="/send")
	 public String user(Model model,
			 String username){
		// 获得所有图书集合
		
		List<User> user_list = adminService.getAll6(username);
		// 将图书集合添加到model当中
		model.addAttribute("user_list", user_list);
		
		// 跳转到main页面
		return "send";
	}  
	 
	 @RequestMapping(value="/tell")
	 public ModelAndView find(String username,String email,ModelAndView mv,HttpSession session, HttpServletResponse response) throws Exception{		
		User user=adminService.find(username, email);
		if(user!=null){
			StringBuffer url=new StringBuffer();
			StringBuilder builder=new StringBuilder();
			builder.append("");
			url.append("您的商品已发货，请耐心等待，很快送达你手中！");
			builder.append("");
			builder.append(""+url+"");
			
			System.out.print("builder输出");
			builder.append("");
			SimpleEmail sendemail=new SimpleEmail();
			sendemail.setHostName("smtp.163.com");
			sendemail.setAuthentication("18051369196@163.com","yx960801");
			sendemail.setCharset("UTF-8");
			try{
				sendemail.setCharset("UTF-8");
				sendemail.addTo(email);
				sendemail.setFrom("18051369196@163.com");
				sendemail.setSubject("找回密码");
				sendemail.setMsg(builder.toString());
				sendemail.send();
				System.out.println(builder.toString());
			}catch(EmailException e){
				e.printStackTrace();
				System.out.print("抛出异常");
			}
			mv.setViewName("newpassword");
		
		}else{
			
			response.getWriter().println("密码获取失败");
			System.out.print("密码获取失败");
		}	
		return mv;
	}

//  修改订单
	 @RequestMapping(value="/updateorder",method=RequestMethod.POST)
		public ModelAndView updateorder(
		        int id,
				String status,
				String totalprice, 
				String phone,
				String address,
				ModelAndView mv,
				HttpSession session){
			Order uporder=	adminService.updateorder(id,status,totalprice, phone,address);
			mv.setViewName("lookorder");
			return mv;
		}
//	 查看销量与库存
	 @RequestMapping(value="/newstock")
	 public String newstock(Model model){
		// 获得所有图书集合
		List<Product> newstock_list = adminService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("newstock_list",newstock_list);
		// 跳转到main页面
		return "newstock";
}
//	 修改销量与库存
	 @RequestMapping(value="/updatestock",method=RequestMethod.POST)
		public ModelAndView updatestock(
		        int id,
				String name,
				String stock, 
				String sales,
				ModelAndView mv,
				HttpSession session){
			Product upstock=adminService.updatestock(id,name,stock,sales);
			mv.setViewName("newstock");
			return mv;
		} 
//	 删除商品
	 @RequestMapping(value="/deleteproduct")
	 public String lookproduct(Model model){
		// 获得所有图书集合
		List<Product> product_list = adminService.getAll2();
		// 将图书集合添加到model当中
		model.addAttribute("product_list",product_list);
		// 跳转到main页面
		return "deleteproduct";
}
	 @RequestMapping(value="/deproduct")
	 public ModelAndView deproduct(int id, 
			 				ModelAndView mv ){
	   adminService.deproduct(id);
		mv.setViewName("deleteproduct");
		return mv;
	}
//	 用户浏览
	 @RequestMapping(value="/useradmin")
	 public String lookuser(Model model){
		// 获得所有图书集合
		List<User> user_list = adminService.getAll3();
		// 将图书集合添加到model当中
		model.addAttribute("user_list",user_list);
		// 跳转到main页面
		return "useradmin";
}
//修改用户
	 @RequestMapping(value="/updateuser")
	 public String updateuser(Model model){
		// 获得所有图书集合
		List<User> user_list = adminService.getAll4();
		// 将图书集合添加到model当中
		model.addAttribute("user_list",user_list);
		// 跳转到main页面
		return "updateuser";
}
	 @RequestMapping(value="/deleteuser")
	 public ModelAndView deuser(int id, 
			 				ModelAndView mv ){
	   adminService.deuser(id);
		mv.setViewName("updateuser");
		return mv;
	}
	 
//	 更改商品类别
	 @RequestMapping(value="/catagory")
	 public String catagory(Model model){
		// 获得所有图书集合
		List<Product> product_list = adminService.getAll5();
		// 将图书集合添加到model当中
		model.addAttribute("product_list",product_list);
		// 跳转到main页面
		return "catagory";
}
	 @RequestMapping(value="/updatecatagory",method=RequestMethod.POST)
		public ModelAndView updatecatagory(
		        int id,
				String name,
				String price, 
				String typeid,
				ModelAndView mv,
				HttpSession session){
			Product upstock=adminService.updatecatagory(id,name,price,typeid);
			mv.setViewName("catagory");
			return mv;
		} 
}
