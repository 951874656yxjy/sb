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
            <input type="text" name="loginname" id="loginname" class="form-control" value="${loginname}" placeholder="请输入用户名">
        </div>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="password" name="password" id="password" class="form-control" value="${password}" placeholder="请输入密码">
  
        </div>
        <br>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<div class="checkbox">
							<label for="remember-me">
    							<input  type="checkbox" onclick="remember();">    记住密码 
               					
							</label>
						</div>
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
$(document).ready(function(){
    //记住密码功能
    var str = getCookie("loginInfo");
    str = str.substring(1,str.length-1);
    var username = str.split(",")[0];
    var password = str.split(",")[1];
    //自动填充用户名和密码
    $("#userName").val(username);
    $("#pwd").val(password);
});

//获取cookie
function getCookie(cname) {
var name = cname + "=";
var ca = document.cookie.split(';');
for(var i=0; i<ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1);
    if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
}
return "";
}

//记住密码功能
function remember(){
var remFlag = $("input[type='checkbox']").is(':checked');
if(remFlag==true){ //如果选中设置remFlag为1
    //cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
    var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
    if(conFlag){ //确认标志
        $("#remFlag").val("1");
    }else{
        $("input[type='checkbox']").removeAttr('checked');
        $("#remFlag").val("");
    }
}else{ //如果没选中设置remFlag为""
    $("#remFlag").val("");
}
}
</script>
</body>
</html>
