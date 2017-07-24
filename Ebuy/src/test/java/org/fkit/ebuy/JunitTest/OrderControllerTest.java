package org.fkit.ebuy.JunitTest;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class OrderControllerTest {
	@Autowired
    private OrderService orderService;
	
	@Test
	public void testOrder() {
		List<Order> u = orderService.getAll("123");
		System.out.println(u);
	}
	
	@Test
	public void testOrderdetail() {
		List<Order> u = orderService.getAll2(15);
		System.out.println(u);
	}
	

}
