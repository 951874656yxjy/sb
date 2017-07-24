package org.fkit.ebuy.JunitTest;

import static org.junit.Assert.*;

import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class UserControllerTest {
	@Autowired 
	@Qualifier("userService")
	 private UserService UserService;
	@Test
	public void testLogin() {
		User u=UserService.login("123", "123");
		if(u!= null){
			System.out.println("登录成功");
		}else{
			System.out.println("登录失败");
		}
//		
	}
}
