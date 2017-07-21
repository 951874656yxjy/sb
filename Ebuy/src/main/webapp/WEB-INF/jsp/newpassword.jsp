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

	<h1><font  color="red">你正在修改密码，请记住你修改后的密码！</font></p></h1>
	<form action="newpwd" method="post">
				<input type="text" name="loginname" id="loginname" tabindex="1" class="form-control"  placeholder="请输入登录账号">
				<input type="text" name="username" id="username" tabindex="1" class="form-control"  placeholder="请输入账号的用户名"> 
				<input type="text" name="email" id="email" tabindex="1" class="form-control"  placeholder="请输入账号的邮箱"> 
				<input type="text" name="phonenumber" id="phonenumber" tabindex="1" class="form-control"  placeholder="请输入你的电话号码"> 
                <input type="password" name="password" id="password" tabindex="1" class="form-control" placeholder="请输入新密码">
                 <div class="form-group">
							<div class="row">
								<div class="col-sm-5 col-sm-offset-4">
									<button type="submit" class="btn btn-default btn-lg" >修改密码</button>
								</div>
							</div>
						</div>
    </form>
	</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>

