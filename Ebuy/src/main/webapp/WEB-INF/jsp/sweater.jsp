  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>购物车</title>
	<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
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
   <div class="col-md-2">
      <ul>
            <li class="dropdown">
                <a href="Tshirt" class="dropdown-toggle" data-toggle="dropdown">
                                                                    潮流T恤
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="Tshirt">男T恤</a></li>
                    <li><a href="Tshirt">女T恤</a></li>
                    <li><a href="Tshirt">中性T恤</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="sweater" class="dropdown-toggle" data-toggle="dropdown">
 					卫衣
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="sweater">男卫衣</a></li>
                    <li><a href="sweater">女卫衣</a></li>
                    <li><a href="sweater">中性卫衣</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="canvasbag" class="dropdown-toggle" data-toggle="dropdown">
 					帆布袋
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="canvasbag">帆布袋</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="phoneshell" class="dropdown-toggle" data-toggle="dropdown">
 					手机壳
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="phoneshell">手机壳</a></li>
                </ul>
            </li>
         </ul>
   </div>
   <div class="col-md-10">
    <div class="container">
       <c:forEach items="${requestScope.sweater_list }" var="s">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/${s.image }" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>${s.descripts}</p>
          </div>
          <div class="col-md-5"></div>
              <p>${s.price }</p>
              <p><a href="product.action?id=${s.id }&pid=${s.id}" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div> 
   </c:forEach>
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href=""><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 
   
   </div>
  <hr>

 

</body>
</html>
