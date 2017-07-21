
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>购物车</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
	<script src="jquery/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
  <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>易购欢迎你</a>
        </div>
           <div class="col-md-2">
        <c:choose>
		   <c:when test="${ sessionScope.user !=null }">
					<a>${sessionScope.user.username}	</a>
					&nbsp;&nbsp;
					<a href ="newuser-main">注销</a>
			</c:when>
	       <c:otherwise>
					    <a href="loginForm"  >登录</a>
					    		&nbsp;&nbsp;
						<a  href="register"  >注册</a>
			</c:otherwise>
	  	</c:choose>
	  </div>
   </div>              
       
        
   </div> 
   <hr>
 <div class="container">
  　<div class="col-md-1">
  　   <img src="images/图标.png" class="img-responsive" alt="">
  　</div>
   <div class="col-md-9">
      	<div class="navbar navbar-default " role="navigation">
             <ul class="nav nav-pills  nav-justified">
                <li ><a href="main">网站首页</a></li>
                <li><a href="shop">精选商城</a></li>
                <li><a href="collection.action?username=${ sessionScope.user.username }" >我的收藏</a></li>
               <li><a href="order.action?username=${ sessionScope.user.username }">我的订单</a></li>
             </ul>
    	 </div>
   </div>
   <div class= "col-md-2">
     	 <p><a href="cart.action?username=${ sessionScope.user.username }"  class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>  </p>     
    </div>

   </div>
  <div class="container">
   <h2>购物车</h2>
   <c:forEach items="${requestScope.cart_list }" var="cart">
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>商品图片</th>     
                <th >商品名称</th>
                <th >商品价格</th>
                <th >商品数量 </th>
                <th >操作</th>
            </tr>
       </thead>
            
             <tr >
             	<td style="vertical-align: middle;"><img src="images/${cart.image }" height="70"></td>
             	<td style="vertical-align: middle;">${cart.name }</td>
             	<td style="vertical-align: middle;">${cart.price }<c:set value="${cart.price  * cart.number} " var="sum"></c:set>
             
             	 </td>
             	<td style="vertical-align: middle;">
	             		<form action="updatecart.action?product_id=${cart.product_id} " method="post" >
	             			<input type="hidden" name="product_id" id="product_id" tabindex="1" class="form-control" value="${cart.product_id}" > 
	             			<input type="text" id="number" name="number"  value="${cart.number }">
	             			<input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${ sessionScope.user.username }">
	             			<button type="submit" class="btn btn-default " >修改</button>
	             		</form>
             	</td>
             	<td style="vertical-align: middle;"> <a href="deletecart.action?product_id=${cart.product_id}">删除</a> 
             	</td>
             </tr>
             <tr>
              <td colspan="5">
           		  <form action="submitorder" method="post" >
					  <div class="row">
			         		<input type="hidden" id="number" name="number"  value="${cart.number }">
			                <input type="hidden" name="status" id="status" tabindex="1" class="form-control" value="发货中" >
			                <input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${ sessionScope.user.username }" >
			       			<input type="hidden" name="good_name" id="good_name" tabindex="1" class="form-control" value="${cart.name }" >
			       			<input type="hidden" name="good_id" id="good_id" tabindex="1" class="form-control" value="${cart.product_id }" >
			       			<input type="hidden" name="good_picture" id="good_picture" tabindex="1" class="form-control" value="${cart.image }" >
			       	 </div> 
			       	 <div class="row">
			       	   <div class="col-md-4 col-md-offset-2 ">
			       	   		 联系电话：<input type="text" name="phone" id="phone" tabindex="1"  class="form-control"  >
			       	   </div>
			           <div class="col-md-4 col-md-offset-1 ">    	
			               	 订单金额：      <input type="text" name="totalprice" id="totalprice" tabindex="1" class="form-control" value="${sum}" >
			       	   </div>
			       	   <div class="col-md-7 col-md-offset-3">
			       		  送货地址：  <input type="text" name="address" id="address" tabindex="1" class="form-control"  >
			       		  </div>
			                
			       	 </div>
		      		 
		      		  <div class="col-md-2 col-md-offset-9">
    					 <button class="btn btn-danger btn-lg ">生成订单</button>   
  					  </div>
        	 	 </form> 
             	</td>
             </tr>
       
     </table>
     </c:forEach>


 </div>
  <hr>
 <div class="container">
   <form action="neworder" method="post">
    <div class="col-md-2 col-md-offset-9">
    	 <button class="btn btn-danger btn-lg ">生成订单</button>   
    </div>
    </form>
 </div>
 

</body>
</html>
