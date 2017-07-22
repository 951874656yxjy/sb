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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
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
		                <a ><strong>欢迎登陆</strong></a> </p>
		           		 </div>  
		              <div class="col-md-3  col-sm-6" > <br><a href="loginForm">已有账号？直接登录</a></div>
  </div>
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

	<form class="form-horizontal" action="login" id="loginForm" method="post" >
		<div class="col-md-6 col-md-offset-3 " >
	    <font color="red">${requestScope.message }</font>
     <div class="input-group input-group-lg">
            <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="text" name="loginname" id="loginname" class="form-control"  placeholder="请输入用户名">
        </div>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="password" name="password" id="password" class="form-control"  placeholder="请输入密码">
  
        </div>
        <br>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
					
							<label class="rember-me">
   							<input type="checkbox" id="remember" name="remember" >
                  			记住密码 
							</label>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						 <button type="submit" class="btn btn-danger " >立即登录</button>
					</div>
				</div>
                <br>
                <div class="form-group ">
                 <div class="col-md-5 col-md-offset-1 col-sm-6 ">
                    <a href="findpassword"> 忘记密码？</a>
                 </div>
                 <div class="col-md-5 col-md-offset-1 col-sm-6 ">
                    <a href="register"> 免费注册</a>
   				 </div>
 	           </div>
     </div>
	</form>
				
  </div>
  </div>
</div>
			<div class="row ">
                 <div class="col-md-5 col-md-offset-5">
                   <a href="adminloginForm" class="btn btn-warning">管理员登录</a>
                 </div>
                </div>
</div>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script>
  window.onload = function(){
    var oForm = document.getElementById('loginForm');
    var oUser = document.getElementById('loginname');
    var oPswd = document.getElementById('password');
    var oRemember = document.getElementById('remember');
    //页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('loginname') && getCookie('password')){
      oUser.value = getCookie('loginname');
      oPswd.value = getCookie('password');
      oRemember.checked = true;
    }
    //复选框勾选状态发生改变时，如果未勾选则清除cookie
    oRemember.onchange = function(){
      if(!this.checked){
        delCookie('loginname');
        delCookie('password');
      }
    };
    //表单提交事件触发时，如果复选框是勾选状态则保存cookie
    oForm.onsubmit = function(){
      if(remember.checked){ 
        setCookie('loginname',oUser.value,7); //保存帐号到cookie，有效期7天
        setCookie('password',oPswd.value,7); //保存密码到cookie，有效期7天
      }
    };
  };
  //设置cookie
  function setCookie(name,value,day){
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires='+ date;
  };
  //获取cookie
  function getCookie(name){
    var reg = RegExp(name+'=([^;]+)');
    var arr = document.cookie.match(reg);
    if(arr){
      return arr[1];
    }else{
      return '';
    }
  };
  //删除cookie
  function delCookie(name){
    setCookie(name,null,-1);
  };
</script>
</body>
</html>
