package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.domain.Product;

/**   
 * @Description: 人事管理服务层接口
 * <br>网站：<a href="http://www.fkit.org">疯狂Java</a> 
 * @author 肖文吉	36750064@qq.com   
 * @version V1.0   
 */
public interface ProductService {

	List<Product> getAll1(int id);

	List<Comment> getAll2(int pid);

}