package org.fkit.ebuy.JunitTest;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ShopService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class ShopControllerTest {

	@Autowired
    private ShopService shopService;

	@Test
	public void testGetAll5() {
		List<Product> u = shopService.getAll5(5);
        System.out.println(u);
       
	}
	@Test
	public void testGetAll4() {
		List<Product> u = shopService.getAll4();
        System.out.println(u);
       
	}


}
