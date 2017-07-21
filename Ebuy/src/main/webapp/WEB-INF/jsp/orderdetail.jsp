
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
   <h2>订单明细</h2>
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>订单号</th>     
                <th >商品名称</th>
                <th >商品图片</th>
                <th >商品数量 </th>
             
            </tr>
       </thead>
            <c:forEach items="${requestScope.orderdetail_list }" var="o">
             <tr >
             	<td style="vertical-align: middle;"> ${o.id } </td>
             	<td style="vertical-align: middle;">${o.good_name }</td>
             	<td style="vertical-align: middle;"><img src="images/${o.good_picture}"  height="90"></td>
             	<td style="vertical-align: middle;">${o.number}</td>
             	
             	
             </tr>
            </c:forEach>
     </table>
  
     <div class="col-md-2 col-md-offset-10">
     	<a href="order.action?username=${ sessionScope.user.username }"  class="btn btn-warning" role="button">返回订单页面</a>
     
     </div>
       
 </div>
 
  

<script src="jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>