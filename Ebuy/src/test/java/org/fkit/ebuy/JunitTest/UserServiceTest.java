package org.fkit.ebuy.JunitTest;

import static org.junit.Assert.*;

import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class UserServiceTest {

	@Autowired 
	@Qualifier("userService")
	 private UserService userService;

	@Test
	public void testRegister() {
		User insertuser = userService.register
				("mm", "78945","123","133@163.com","13374");
				
		System.out.println("注册成功");
	
	}
	@Test
	public void testFind() {
		User t=userService.findpwd("999", "951874656@qq.com");
				System.out.println(t);
	}

}
