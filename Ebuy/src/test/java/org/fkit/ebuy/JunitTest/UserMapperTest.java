//package org.fkit.ebuy.JunitTest;
//
//import org.fkit.ebuy.domain.User;
//import org.fkit.ebuy.mapper.UserMapper;
//import org.junit.Test;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import junit.framework.TestCase;
//
//
//
//public class UserMapperTest   extends TestCase {
//    private Logger logger=LoggerFactory.getLogger(this.getClass());
//    @Autowired
//    private UserMapper userMapper;
//    
//    @Test
//    public void testUserInsert() {
//        User user=new User(100, null, null, null, null, null);
//        user.setLoginname("yanxin1");
//        user.setPassword("222222");
//        user.setUsername("燕鑫");
//        user.setEmail("951874656@qq.com");
//        user.setPhonenumber("18051369196");
//        userMapper.insertuser3(user);
//        logger.info("user.getLoginname()");
//    }
//    @Test  
//    public void test1(){  
//        System.out.println("第二个测试方法*******");  
//    }  
//    @Test
//    public void testUserSelect() {
//        List<User> select = userMapper.select(null);
//        for(User user:select){
//            logger.info("--------->"+user.getName()+"-------------");
//        }
//        logger.info("--------->testUserInsert end-------------");
////    }
//}