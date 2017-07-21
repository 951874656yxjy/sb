//package org.fkit.ebuy.JunitTest;
//
//import org.fkit.ebuy.domain.User;
//
//import junit.framework.TestCase;  
//  
//
//public class UserTest extends TestCase  {
//
//	User testUser;  
//    //此方法在执行每一个测试方法之前（测试用例）之前调用  
//    @Override  
//    protected void setUp() throws Exception  
//    {  
//        // TODO Auto-generated method stub  
//        super.setUp();  
//        testUser = new User(1,"123", "123", "123", "123@123", "18051369196");  
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
//    public void testGetLoginname()  
//    {  
//        assertEquals("123", testUser.getLoginname());  
//        System.out.println("testLoginname()");  
//    }  
//      
//    //测试Person对象的getAge()方法  
//    public void testGetPassword()  
//    {  
//        assertEquals("123", testUser.getPassword());  
//        System.out.println("testPassword()");  
//    } 
//    
//    public void testGetUsername()  
//    {  
//        assertEquals("321", testUser.getUsername());  
//        System.out.println("testUsername()");  
//    }  
//    
//    public void testGetEmail()  
//    {  
//        assertEquals("123@123", testUser.getEmail());  
//        System.out.println("testEmail()");  
//    } 
//    public void testGetPhonenumber()  
//    {  
//        assertEquals("24", testUser.getPhonenumber());  
//        System.out.println("testPhonenumber()");  
//    } 
//}