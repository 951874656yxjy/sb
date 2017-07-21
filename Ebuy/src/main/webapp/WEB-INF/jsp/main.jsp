<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>易购</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
    	<div id="carousel1" class="carousel slide">
          <ol class="carousel-indicators">
            <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
            <li data-target="#carousel1" data-slide-to="1" class=""> </li>
            <li data-target="#carousel1" data-slide-to="2" class=""> </li>
          </ol>
          <div class="carousel-inner">
            <div class="item"> <img class="img-responsive" src="images/主页.jpg" alt="thumb">
              <div class="carousel-caption"> Carousel caption 1. Here goes slide description. Lorem ipsum dolor set amet. </div>
            </div>
            <div class="item active"> <img class="img-responsive" src="images/主页.jpg" alt="thumb">
              <div class="carousel-caption"> Carousel caption 2. Here goes slide description. Lorem ipsum dolor set amet. </div>
            </div>
            <div class="item"> <img class="img-responsive" src="images/主页.jpg" alt="thumb">
              <div class="carousel-caption"> Carousel caption 3. Here goes slide description. Lorem ipsum dolor set amet. </div>
            </div>
          </div>
          <a class="left carousel-control" href="#carousel1" data-slide="prev"><span class="icon-prev"></span></a> <a class="right carousel-control" href="#carousel1" data-slide="next"><span class="icon-next"></span></a></div>
    </div>
    
    <br>

<div class="container">
  <div class="row">
     <img src="images/主页.jpg" class="img-responsive" ">
   </div>
 </div>
 <hr>
 <!-- PS图片加入 -->
 <div class="container">
		<div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="Tshirt" target="_blank">
                <h3 class="text-center" >T恤</h3>
                <em > <img src="images/T恤.png" alt="T恤" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="sweater" target="_blank">
                <h3 class="text-center">卫衣</h3>
                <em > <img src="images/卫衣.png" alt="卫衣" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="phoneShell" target="_blank">
                <h3 class="text-center">手机壳</h3>
                <em > <img src="images/手机壳.png" alt="手机壳" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="canvasbag" target="_blank">
                <h3 class="text-center">帆布袋</h3>
                <em > <img src="images/帆布袋.png" alt="帆布袋" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">明信片</h3>
                <em > <img src="images/明信片.png" alt="明信片" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">台历</h3>
                <em > <img src="images/台历.png" alt="台历" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">抱枕</h3>
                <em > <img src="images/抱枕.png" alt="抱枕" /></em>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">束口袋</h3>
                <em > <img src="images/束口袋.png" alt="束口袋" /></em>
        </div>
	
</div>
 
 
<hr>
<!-- T恤 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">T恤<small>告诉世界你与众不同</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">T-shirt</h3>
        </div>	
    </div>
</div>
<hr>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>BACK TO THE FUTURE！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>Welcome To China</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤3.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>Open a door to the land of dark shadows</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤4.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>山姆大叔T恤</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤5.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>悟空，愤怒的猴子，降妖除魔，妖孽休扰！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>青春有梦 为青春重生</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/T恤7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>百变妖姬 媚惑众生</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="Tshirt" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="T-shirt"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
</div>

<hr>
<!-- 卫衣 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">卫衣<small>穿上卫衣，人生这场游戏，玩得酷才行！</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">Sweater</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣1.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>潮酷  自由的生活态度</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>跳出舒适区，刻意练习。</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣3.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>相公款 ONLYOU 爱你一万年</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣4.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>娘子款 ONLYOU 爱你一万年！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>他们总是说时间会改变事情，但事实上你得自己去改变它们。！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣6.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>日常通勤必備良品，應對自如游刃有餘。</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/卫衣7.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>暴力熊本桑 出没请注意</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="sweater" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="sweater"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div>
<hr>
<!-- 手机壳 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">手机壳<small>把喜爱每天都捧在手心</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">PhoneShell</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>寡人的手机 你别碰！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>现在总有些刁民想谋害朕！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳3.1.png" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>龙拳在手，揍你成狗！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>本喵大人就这样盯着你，小样儿</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>《山海经》：“···有乘黄，其状如狐，其背上有角，乘之寿二千岁。 ”</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>任凭弱水三千，我只取一瓢~！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/手机壳7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>鹊桥下的爱，祝有情人终成眷属。</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="phoneshell" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="phoneshell"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 
<hr>
<!-- 帆布袋 -->
<div class="container">
  <div class="row">
        <div class="col-md-8">
            <h1 class="text-left">帆布袋<small>一个简单的帆布袋，装上惬意心情，去寻找生活中的美好</small></h1>
        </div>  
        <div class="col-md-4">	
            <h3 class="text-right">Canvas Bag</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>almost lover！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>等式的性质考虑a=b，敲黑板！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋3.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>自从来到这个世界，俺老孙无悔！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>网上很流行的一张哈士奇的表情，每次看到都会觉得很逗，希望给你带来好心情</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>生活已经如此不易，别有那么多不开心，人生苦短，及时行乐。</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>喜欢就买，不行就分，任性如我</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/帆布袋7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>要自由，给谁要呢，你问我么，我不知道耶，哈哈哈！</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥85.00</p>
              <p><a href="canvasbag" class="btn btn-warning" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="canvasbag"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 



<hr>  
  <div>当前在线人数：${applicationScope.count}</div>
<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright ©YX MyWebsite. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>