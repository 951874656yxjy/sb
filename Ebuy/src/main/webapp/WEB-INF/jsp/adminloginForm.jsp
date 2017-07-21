<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>易购后台管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
		<!-- basic styles -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
	</head>

	<body>

		<div class="navbar navbar-danger" id="navbar">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small><i class="icon-leaf"></i>易购 后台管理系统</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				<div class="navbar-header pull-right" >
				<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<span class="user-info">
								<p>Welcome,${sessionScope.admin.adminrealname}</p>
								</span>
								<i class="icon-caret-down"></i>
							</a>
							</li>
							</ul>

				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">

					<span class="menu-text"></span>

				</a>
			<div class="sidebar" id="sidebar">
				<ul class="nav nav-list">
					<li class="active">
							<a href="admin">
							<i class="icon-dashboard"></i>
							<span class="menu-text"> 首页 </span>
						</a>
					</li>
					<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 商品管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="#">
										<i class="icon-double-angle-right"></i>
										商品类别管理
									</a>
								</li>
								<li>
								<a href="addproduct">
									<i class="icon-double-angle-right"></i>
									 商品添加管理
								</a>
								</li>
								<li>
									<a href="deleteproduct">
										<i class="icon-double-angle-right"></i>
									商品删除管理
									</a>
								</li>
								<li>
									<a href="newstock">
										<i class="icon-double-angle-right"></i>
									商品销量库存管理
									</a>
								</li>
							</ul>
						</li>
					<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 订单管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="lookorder">
										<i class="icon-double-angle-right"></i>
										用户订单浏览
									</a>
								</li>
							
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> 用户管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="useradmin">
										<i class="icon-double-angle-right"></i>
										用户信息查询
									</a>
								</li>
								<li>
									<a href="updateuser">
										<i class="icon-double-angle-right"></i>
										用户管理
									</a>
								</li>
							</ul>
						</li>
				<!--  	<li>

							<a href="#" class="dropdown-toggle">

								<i class="icon-tag"></i>

								<span class="menu-text"> 用户管理 </span>

								<b class="arrow icon-angle-down"></b>

							</a>



							<ul class="submenu">

								<li>

									<a href="profile.html">

										<i class="icon-double-angle-right"></i>

										用户信息

									</a>

								</li>

								<li>

									<a href="login.html">

										<i class="icon-double-angle-right"></i>

										登录 &amp; 注册

									</a>

								</li>

							</ul>

						</li> -->	

						<li>

							<a href="#" class="dropdown-toggle">

								<i class="icon-file-alt"></i>

								<span class="menu-text">

									其他管理

								</span>

								<b class="arrow icon-angle-down"></b>

							</a>

							<ul class="submenu">

								<li>

									<a href="">

										<i class="icon-double-angle-right"></i>
										帮助
									</a>
								</li>
								<li>
									<a href="">
										<i class="icon-double-angle-right"></i>
										占位专用
									</a>

								</li>

							</ul>

						</li>

					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">

						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>

					</div>

				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="admin">Home</a>
							</li>
						</ul><!-- .breadcrumb -->
					</div>
					<div class="page-content">
					    <div class="row">
			<div class="col-md-8 col-md-offset-2" style="padding:100px  0px 0px 0px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p>欢迎登录</p> 
							</div>
						</div>
						<hr>
			       </div>

	<form class="form-horizontal" action="adminlogin" method="post" >
		<div class="col-md-6 col-md-offset-3 " >
	   <!--   <font color="red">${requestScope.message }</font> -->
     	<div class="input-group input-group-lg">
            <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="text" name="adminname" id="adminname" class="form-control" placeholder="请输入用户名">
        </div>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="password" name="adminpassword" id="adminpassword" class="form-control" placeholder="请输入密码">
        </div>
      <br>
		<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						 <button type="submit" class="btn btn-danger " >立即登录</button>
					</div>
		</div>
  	 </div>
	</form>
</div>
</div>
</div>
					</div><!-- /.page-content -->

				</div><!-- /.main-content -->



				<div class="ace-settings-container" id="ace-settings-container">

					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">

						<i class="icon-cog bigger-150"></i>

					</div>
				</div><!-- /#ace-settings-container -->

			</div><!-- /.main-container-inner -->

		</div><!-- /.main-container -->



		<!-- basic scripts -->

		<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>

		<script src="js/bootstrap.js"></script>

		<script src="assets/js/typeahead-bs2.min.js"></script>

		<script src="assets/js/jquery.nestable.min.js"></script>

		<script src="assets/js/ace-elements.min.js"></script>

		<script src="assets/js/ace.min.js"></script>
		<script src="jquery/jquery-3.2.1.min.js"></script>
		
		<!-- Include all compiled plugins (below), or include individual files as needed --> 
		<script src="js/bootstrap.js"></script>
				<!-- inline scripts related to this page -->

</body>

</html>

