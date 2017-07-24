package org.fkit.ebuy.test;
import java.util.HashMap;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.factory.FKSqlSessionFactory;
import org.fkit.ebuy.mapper.UserMapper;

public class UserTest {
	
	public static void main(String[] args) throws Exception {
		// 创建Session实例
		SqlSession session = FKSqlSessionFactory.getSqlSession();
		UserTest t = new UserTest();
		// 获取EmployeeMapper对象
		UserMapper em = session.getMapper(UserMapper.class);
		
// t.testInsertUser(em);
//	t.testDeleteUser(em);
  t.testUpdateUserPassword(em);
		
		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
	}

//  添加用户	
public void testInsertUser(UserMapper em){
	
	User e = new User();
	e.setLoginname("1255me");
	e.setPassword("123456");
	e.setUsername("玛丽");
	e.setEmail("123@123");
	e.setPhonenumber("13902019999");
	
	// 注意：没有设置state属性，则insert语句中不会包含state列
	// e.setState("ACTIVE");
	em.insertuser3(e);
	System.out.println("插入成功！loginname：" + e.getLoginname() );
}

// 更新密码
public void testUpdateUserPassword(UserMapper em){
	// 使用Map装载参数
	Map<String, Object> param = new HashMap<String, Object>();
	param.put("loginname",123);
	User e = em.selectUserWithLoginname(param);
	e.setPassword("3333");
	em.updateUserPassword(e);
	System.out.println("修改成功password：" + e.getPassword() );
}

//删除用户
public void testDeleteUser(UserMapper em){
	// 使用Map装载参数
	Map<String, Object> param = new HashMap<String, Object>();
	param.put("loginname", "1551me");
	// 动态删除
	em.deleteUser(param);
	System.out.println("删除成功");
}
}

