package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.User;

/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	User login(String loginname,String password);

	User register(String loginname,String password,String username,String email ,String phonenumber);

	User protect(String username, String loginname, String email, String phonenumber);

	User update(String username, String loginname, String email, String phonenumber,String password);

	
	}

	
	

