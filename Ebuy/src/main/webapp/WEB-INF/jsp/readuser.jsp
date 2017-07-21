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
<title>欢迎你登录易购</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body >
<div class=" container">
	<div class="row">
		        		<div class="col-md-9 col-sm-6">
		            		<p><a href="main" class="btn btn-danger btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>易购</strong></a> 
		           		 </div>  
		              
	</div>
	<h1><font  color="red">恭喜你成功找回密码</font></p></h1>
          <h3> 你的密码是： <p>${sessionScope.user1.password}</p></h3>
          <br><br><br>
          <hr>
          <div class="col-md-4 col-md-offset-2"><a class="btn btn-warning btn-lg" href="loginForm" role="button">我要登录</a></div>
          <div class="col-md-4 col-md-offset-2"><a class="btn btn-warning btn-lg" href="newpassword" role="button">修改密码</a></div>
</div>




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>

