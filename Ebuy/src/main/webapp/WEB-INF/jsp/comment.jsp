
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
<link rel="stylesheet" href="css/star.css">
</head>

<script src="js/jquery.min.js"></script>
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
     	 <p><a href="cart.action?username=${ sessionScope.user.username }" class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>  </p>     
    </div>
   </div>
  <hr>
 <div class="container" >
 		<c:forEach items="${requestScope.product_list }" var="product">
   <div class="col-md-1" >
   				
     <div class="row">
        <div class="thumbnail"> <img src="images/${product.image }" alt="Thumbnail Image 1" class="img-responsive"></div>
     </div>
   
      <div class="row">
        	<div class="thumbnail"> <img src="images/${product.image2 }" alt="Thumbnail Image 2" class="img-responsive"></div>
      </div>
      
      <div class="row">
      		<div class="thumbnail"> <img src="images/${product.image3 }" alt="Thumbnail Image 3" class="img-responsive"></div>
      </div>
       
      <div class="row">
       		<div class="thumbnail"> <img src="images/${product.image4 }" alt="Thumbnail Image 4" class="img-responsive"></div>
      </div>
    </div>
   <div class="col-md-6" >
   		<div class=" text-center"> <img src="images/${product.image }"  style="width:450px"></div>
   </div>
   <div class="col-md-4 col-md-offset-1">
   		<div><p align="left">${product.name}</p> </div>
        <br>
        <div class="panel panel-default">
            <div class="panel-heading">
                <p>${product.descripts}</p>
            </div>
        </div>
 
        <p>面料   &nbsp  &nbsp 100%纯棉</p>
        <p>颜色   &nbsp  &nbsp <button class="btn btn-warning"> 黑色</button></p>
        <p>价格   &nbsp  &nbsp ${product.price}   </p>
       	
         <p> <div class="col-md-6">已销售： ${product.sales}  件</div> 
             <div class="col-md-6">库存：${product.stock}   件</div> 
         </p>
         </div>

  </div>
  
  
<hr>
<div class="container">
    <h2>商品评论</h1>
 <form class="form-horizontal" action="submitcomment" method="post" >
 
 <div class="input-group input-group-lg">
     	<input name="pid" id="pid" type="hidden" value="${product.id}" />
     	<input name="username" id="username" type="hidden" value="${sessionScope.user.username}" />
  </div>
  <div class="form-group">
  	
  			<!--  		<a style="color:block"> 0-1分 ：很不满意</a>&nbsp;
    				<a style="color:yellow"> 1-2分: 较不满意</a>&nbsp;
    				<a style="color:green">  2-3分：一般 </a>&nbsp;
    				<a style="color:"> 3-4分：比较满意 </a>&nbsp;
    				<a style="color: #FF0000">  4-5分：非常满意</a>&nbsp;
    
    <ul>
    			
                <li>商品质量:   <a><input type="text" name ="quality" id ="input" onkeyup="checkinput_zzjs(event)"/>分 </a></li>
            	<li>卖家服务:   <a><input type="text" name ="service" id="input"  onkeyup="checkinput_zzjs(event)"/>分 </a> </li>
                <li>物流服务:   <a><input type="text" name ="logistics" id ="input" onkeyup="checkinput_zzjs(event)"/>分 </a></li>
     </ul>  -->
     
     <div class="form-group">
     <div class="stars">
    <span>商品质量：</span>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <input type="text" id ="quality" name ="quality" class="form-control"/>
</div>
<div class="stars">
    <span>卖家服务：</span>
    <i class="" score="1">★</i>
    <i class="" score="2">★</i>
    <i class="" score="3">★</i>
    <i class="" score="4">★</i>
    <i class="" score="5">★</i>
    <input type="text" id ="service" name="service" class="form-control"/>
</div>
<div class="stars">
    <span>物流服务：</span>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <input type="text" id ="logistics" name ="logistics" class="form-control"/>
</div>
   </div>
     
     
     
     
	</div>	 

   <div class="input-group input-group-lg">
     	<input type="text" id="comments" name="comments"  maxlength="200" class="form-control"  placeholder="最多输入200个字符" style="width:600px;height:270px;">
   </div>
   <div class="input-group input-group-lg">
    		 <label for="inputfile">添加图片</label>
	    	 <input type="file" id="image1" name="image1" class="form-control" >
</div>
	  <div class="input-group input-group-lg">
			<input type="submit" value="发表评论">
	</div>
</form>
 
</div>
 </c:forEach>
 

<script>
    $(function(){
        /*
        * 鼠标点击，该元素包括该元素之前的元素获得样式,并给隐藏域input赋值
        * 鼠标移入，样式随鼠标移动
        * 鼠标移出，样式移除但被鼠标点击的该元素和之前的元素样式不变
        * 每次触发事件，移除所有样式，并重新获得样式
        * */
        var stars = $('.stars');
        var Len = stars.length;
        //遍历每个评分的容器
        for(i=0;i<Len;i++){
            //每次触发事件，清除该项父容器下所有子元素的样式所有样式
            function clearAll(obj){
                obj.parent().children('i').removeClass('on');
            }
            stars.eq(i).find('i').click(function(){
                var num = $(this).index();
                clearAll($(this));
                //当前包括前面的元素都加上样式
                $(this).addClass('on').prevAll('i').addClass('on');
                //给隐藏域input赋值
                $(this).siblings('input').val(num);
            });
            stars.eq(i).find('i').mouseover(function(){
                var num = $(this).index();
                clearAll($(this));
                //当前包括前面的元素都加上样式
                $(this).addClass('on').prevAll('i').addClass('on');
            });
            stars.eq(i).find('i').mouseout(function(){
                clearAll($(this));
                //触发点击事件后input有值
                var score = $(this).siblings('input').val();
                for(i=0;i<score;i++){
                    $(this).parent().find('i').eq(i).addClass('on');
                }
            });
        }
    })
</script>

<script src="jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>
