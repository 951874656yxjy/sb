//package org.fkit.ebuy.JunitTest;
//
//
//import org.fkit.ebuy.domain.Order;
//import org.fkit.ebuy.domain.User;
//import org.junit.Test;
//import junit.framework.TestCase;  
//  
//public class OrderTest extends TestCase  {
//	
//	Order testOrder;  
//    //此方法在执行每一个测试方法之前（测试用例）之前调用  
//    @Override  
//    protected void setUp() throws Exception  
//    {  
//        // TODO Auto-generated method stub  
//        super.setUp();  
//        testOrder = new Order( 1,"1", "123", "中国矿业大学", "18051369196", "123", "已发货", "123", "123","123");  
//        System.out.println("setUp()");  
//    }  
//  
//    //此方法在执行每一个测试方法之后调用  
//    @Override  
//    protected void tearDown() throws Exception  
//    {  
//        // TODO Auto-generated method stub  
//        super.tearDown();  
//        System.out.println("tearDown()");  
//    }  
//    
////订单号
////	@Test 
////	public final void testGetOid() {
////		  assertEquals(1, testOrder.getOid());  
////	        System.out.println("testOid()");  
////	}
////	状态
//	@Test
//	public final void testGetStatus() {
//		 assertEquals("已发货", testOrder.getStatus());  
//	        System.out.println("testStatus()");  
//	}
////用户名
//	@Test
//	public final void testGetUsername() {
//		assertEquals("123", testOrder.getUsername());  
//        System.out.println("testUsername()");  
//	}
////地址
//	@Test
//	public final void testGetAddress() {
//		assertEquals("中国矿业大学", testOrder.getAddress());  
//        System.out.println("testAddress()");  
//	}
////电话
//	@Test
//	public final void testGetPhone() {
//		assertEquals("18051369196", testOrder.getPhone());  
//        System.out.println("testPhone()");  
//	}
////金额
//	@Test
//	public final void testGetTotalprice() {
//		assertEquals("123", testOrder.getTotalprice());  
//        System.out.println("testTotalprice()");  
//	}
//
////商品ID
//	@Test
//	public final void testGetGood_id() {
//		assertEquals("123", testOrder.getGood_id());  
//        System.out.println("testGood_id()");  
//	}
////商品名称
//	@Test
//	public final void testGetGood_name() {
//		assertEquals("123", testOrder.getGood_name());  
//        System.out.println("testGood_name()");  
//	}
//
//}
