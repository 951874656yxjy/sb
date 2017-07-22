package org.fkit.ebuy.mapper;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.User;

/*** UserMapper接口 * */
public interface UserMapper {
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);

	@Select("insert into tb_user(loginname,password,username,email,phonenumber) values(#{loginname},#{password},#{username},#{email},#{phonenumber})")
	User insertuser(@Param("loginname")String loginname,@Param("password")String password,@Param("username")String username,
			@Param("email")String email,@Param("phonenumber")String phonenumber);
	
	@Select("select * from tb_user where loginname=#{loginname} and username=#{username} and email=#{email} and phonenumber=#{phonenumber}")
	User findPassword(@Param("loginname")String loginname,@Param("username")String username,@Param("email")String email,@Param("phonenumber")String phonenumber);
	
	@Select("update tb_user set  loginname=#{loginname} , username=#{username} ,email=#{email} , phonenumber=#{phonenumber} ,password=#{password} where loginname=#{loginname}")
	User updatepassword(@Param("loginname")String loginname,@Param("username")String username,@Param("email")String email,@Param("phonenumber")String phonenumber,@Param("password")String password);

//	功能测试方法
	
	@Select("SELECT * FROM TB_USER ")
	List<User> selectAllUser();
	
	@Select("insert into tb_user(loginname,password,username,email,phonenumber) values(#{loginname},#{password},#{username},#{email},#{phonenumber})")
	void insertuser3(User e);

	@Select("update tb_user set  loginname=#{loginname} , username=#{username} ,email=#{email} , phonenumber=#{phonenumber} ,password=#{password}  ,id=#{id} where loginname=#{loginname}")
	void updateUserPassword(User e);
	
	@Select("select * from tb_user where loginname = #{loginname}")
	User selectUserWithLoginname(Map<String, Object> param);

	@Select("DELETE FROM TB_USER where loginname=#{loginname} ")
	void deleteUser(Map<String, Object> param);

	//单元测试

	
	
	
	@Select("select * from tb_user where username=#{username} and email=#{email}")
	User findpwd(@Param("username")String username,
			@Param("email") String email);




	}
	
	


