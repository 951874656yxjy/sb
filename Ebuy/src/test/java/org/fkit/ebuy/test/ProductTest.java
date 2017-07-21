package org.fkit.ebuy.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.factory.FKSqlSessionFactory;
import org.fkit.ebuy.mapper.ProductMapper;


public class ProductTest {

	public static void main(String[] args) throws Exception {

		// 创建Session实例
		SqlSession session = FKSqlSessionFactory.getSqlSession();	
		ProductTest t = new ProductTest();
		ProductMapper em = session.getMapper(ProductMapper.class);
		
   	   t.testSelectWhitParam(em);

		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
	}
	
	// 根据动态参数查询商品
	public void testSelectWhitParam(ProductMapper em){
		// 使用Map装载参数
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", "1");
		// 调用selectWhitParam方法
		List<Product> list = em.selectWhitParam(param);
		// 查看返回结果
		System.out.println(list);
	}
	
	
}
