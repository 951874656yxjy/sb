
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
<title>分层轮播3d旋转切换</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery.zySlide.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<style>
	body{ background-color:#2E2E2E}
	.zy-Slide section{ color: #FFFFFF; border-width: 1px; border-style: solid; }
</style>

</head>

<body>
<c:forEach items="${requestScope.p_list }" var="p">
<div id="Slide1" class="zy-Slide">
	<!--prev:元素中的文本通常会保留空格和换行符。而文本也会呈现为等宽字体。-->
	<section>前一张</section>
	<section>后一张</section>
	<ul>
		<!--alt + shift : 可以创建一个矩形选择区域-->
		<li><img src="images/1.jpg" /></li>
	<li><img src="images/1.jpg" /></li>
	<li><img src="images/1.jpg" /></li>
		<li><img src="images/1.jpg" /></li>
<li><img src="images/1.jpg" /></li>
	<li><img src="images/1.jpg" /></li>
	<li><img src="images/1.jpg" /></li>
	</ul>
</div>

</c:forEach>
<script src="jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.zySlide.js"></script>
<script src="js/index.js"></script>

</body>
</html>