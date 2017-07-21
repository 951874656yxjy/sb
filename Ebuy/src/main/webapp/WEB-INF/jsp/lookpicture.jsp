
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en" onmousedown="return false">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<title>分层轮播3d旋转切换</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
			img{
				width:200px;
				height: 320px;
			}
			body{ background-color: #313131; }
			@keyframes fn{
				0% {transform:rotateX(-15deg) rotateY(0deg);}
			    100%{transform:rotateX(-15deg) rotateY(360deg);}

			}
			@-moz-keyframes fn{
				0% {transform:rotateX(-15deg) rotateY(0deg);}
			    100%{transform:rotateX(-15deg) rotateY(360deg);}
			}
			@-ms-keyframes fn{
				0% {transform:rotateX(-15deg) rotateY(0deg);}
			    100%{transform:rotateX(-15deg) rotateY(360deg);}
			}
			@-webkit-keyframes fn{
				0% {transform:rotateX(-15deg) rotateY(0deg);}
			    100%{transform:rotateX(-15deg) rotateY(360deg);}
			}
			.box{				
		    	width:200px;
            	height:320px;
            	position:relative;
            	margin:auto;
            	margin-top:150px;
            	transform-style:preserve-3d;
            	transform:rotateX(-10deg);
            	animation: fn 10s;
            	animation-iteration-count: infinite;
		    	animation-timing-function: linear;
		    	position: relative
			}
			.box:hover{
				animation-play-state: paused;
			}
			.box>div{
				width:200px;
				height:320px;
				position: absolute;
				left:0;
				top:0;
				
			}
		</style>
	</head>
	<body>
		<div class="box">
		  <c:forEach items="${requestScope.p_list }" var="p">
			<div style="transform: rotateY(0deg) translateZ(275px);">
				   <img src="images/${p.image2 }"  />
			</div>
			<div style="transform: rotateY(40deg) translateZ(275px);">
				   <img src="images/${p.image2 }"  />
			</div>
			<div style="transform: rotateY(80deg) translateZ(275px);">
		   <img src="images/${p.image3 }"  />
			</div>
			<div style="transform: rotateY(120deg) translateZ(275px);">
				   <img src="images/${p.image2}"  />
			</div>
			<div style="transform: rotateY(160deg) translateZ(275px);">
			   <img src="images/${p.image3 }"  />
			</div>
			<div style="transform: rotateY(200deg) translateZ(275px);">
				   <img src="images/${p.image3 }"  />
			</div>
			<div style="transform: rotateY(240deg) translateZ(275px);">
				   <img src="images/${p.image3}"  />
			</div>
			<div style="transform: rotateY(280deg) translateZ(275px);">
				   <img src="images/${p.image3 }"  />
			</div>
			<div style="transform: rotateY(320deg) translateZ(275px);">
			<a href="loginForm"	 >  <img src="images/${p.image3 }"  /> </a>
			</div>	
			</c:forEach>				
		</div>
	</body>
	<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</html>
