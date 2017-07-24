package org.fkit.ebuy.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.fkit.ebuy.domain.Cart;

import org.fkit.ebuy.factory.FKSqlSessionFactory;
import org.fkit.ebuy.mapper.CartMapper;



public class CartTest {

	public static void main(String[] args) throws Exception {

		// 创建Session实例
		SqlSession session = FKSqlSessionFactory.getSqlSession();
		
		CartTest t = new CartTest();
		// 获取EmployeeMapper对象
		CartMapper em = session.getMapper(CartMapper.class);
		
//		t.testSelectWhitParam(em);
		
		
//	t.testUpdateCart(em);
		
t.testDeleteCart(em);
//		t.testInsertcart(em);		
		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
	}

	
	// 根据动态参数查询员工数据
	public void testSelectWhitParam(CartMapper em){
		// 使用Map装载参数
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("username", "123");
		// 调用selectWhitParam方法
		List<Cart> list = em.selectWhitParam(param);
		// 查看返回结果
		System.out.println(list);
	}

	// 根据设置的属性动态更新数据
	public void testUpdateCart(CartMapper em){
		// 使用Map装载参数
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("product_id", 1);
		param.put("username","123");
		// 查询id为1的员工
		Cart e = em.selectCartWithUsername(param);
		// 修改员工对象的三个属性
		e.setNumber("100");
		// 动态更新
		em.updateCart2(e);
		System.out.println("更改成功");

	}
	
	// 根据设置的属性动态删除数据
	public void testDeleteCart(CartMapper em){
		// 使用Map装载参数
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("product_id", "1");
		param.put("username", "123");
		// 动态删除
		em.deleteCart(param);
		System.out.println("删除成功");

	}
	
	public void testInsertcart(CartMapper em){
		
		Cart e = new Cart();
		e.setProduct_id(1);
		e.setName("1232");
		e.setUsername("玛丽");
		e.setName("超人");
		e.setPrice("85");
		e.setImage("T恤1.1.jpg");
		e.setNumber("8");
		// 注意：没有设置state属性，则insert语句中不会包含state列
		// e.setState("ACTIVE");
		em.insertcart(e);
		System.out.println("插入成功！商品id：" + e.getProduct_id() );
	}
	
	

}
