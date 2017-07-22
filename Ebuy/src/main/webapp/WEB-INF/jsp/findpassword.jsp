
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>找回密码</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body >

<div class="container">
	<div class="row">
		        		<div class="col-md-9 col-sm-6">
		            		<p><a href="main" class="btn btn-danger btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>易购</strong></a> 
		                <a ><strong>欢迎登陆</strong></a> </p>
		           		 </div>  
		              <div class="col-md-3  col-sm-6" > <br><a href="loginForm">已有账号？直接登录</a></div>
		</div>
    <div class="row">
			<div class="col-md-6 col-md-offset-3" style="padding:100px  0px 0px 0px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p><strong>请输入确认信息找回密码</strong></p> 
							</div>
						</div>
						<hr>
					</div>
		  	 <form action="findpassword" method="post"> 
		  
		  	 <div class="col-md-12 ">
		  	     <div class="row">
					
                      
		   		        <div class="form-group">
                           <div class="col-md-3">  用 户 姓名：</div>
                           <div class="col-md-9">
                                   <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="请输入你的姓名" value="">
                           </div> 
		   		        </div>
		   		        <div class="form-group">
                           <div class="col-md-3">  邮箱地址：</div>
                           <div class="col-md-9">
                                   <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="请输入注册使用的邮箱" value="">
                           </div> 
		   		        </div>
		   		       
				        <div class="form-group">
							<div class="row">
								<div class="col-sm-5 col-sm-offset-4">
									<button type="submit" class="btn btn-default btn-lg" >立即找回</button>
								</div>
							</div>
						</div>
		
			</div>
			</div>
		</form>
	</div>
	</div>
	
	</div>
</div>




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>

