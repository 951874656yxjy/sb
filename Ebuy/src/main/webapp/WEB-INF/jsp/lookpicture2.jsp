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

<style type="text/css">
	html {
		overflow: hidden;
	}
	body {
		position: absolute;
		margin: 0px;
		padding: 0px;
		background: #111;
		width: 100%;
		height: 100%;
	}
	#screen {
		position: absolute;
		left: 10%;
		top: 10%;
		width: 80%;
		height: 80%;
		background: #000;
	}
	#screen img {
		position: absolute;
		cursor: pointer;
		visibility: hidden;
		width: 0px;
		height: 0px;
	}
	#screen .tvover {
		border: solid #876;
		opacity: 1;
		filter: alpha(opacity=100);
	}
	#screen .tvout {
		border: solid #fff;
		opacity: 0.7;
	}
	#bankImages {
		display: none;
	}
</style>

<script type="text/javascript">
var Library = {};
Library.ease = function () {
	this.target = 0;
	this.position = 0;
	this.move = function (target, speed)
	{
		this.position += (target - this.position) * speed;
	}
}

var tv = {
	O : [],
	screen : {},
	grid : {
		size       : 4,
		borderSize : 6,
		zoomed     : false
	},
	angle : {
		x : new Library.ease(),
		y : new Library.ease()
	},
	camera : {
		x    : new Library.ease(),
		y    : new Library.ease(),
		zoom : new Library.ease(),
		focalLength : 750
	},

	init : function ()
	{
		this.screen.obj = document.getElementById('screen');
		var img = document.getElementById('bankImages').getElementsByTagName('img');
		this.screen.obj.onselectstart = function () { return false; }
		this.screen.obj.ondrag = function () { return false; }
		var ni = 0;
		var n = (tv.grid.size / 2) - .5;
		for (var y = -n; y <= n; y++)
		{
			for (var x = -n; x <= n; x++)
			{
				var o = document.createElement('img');
				var i = img[(ni++) % img.length];
				o.className = 'tvout';
				o.src = i.src;
				tv.screen.obj.appendChild(o);
				o.point3D = {
					x  : x,
					y  : y,
					z  : new Library.ease()
				};
				o.point2D = {};
				o.ratioImage = 1;
				tv.O.push(o);
				o.onmouseover = function ()
				{
					if (!tv.grid.zoomed)
					{
						if (tv.o)
						{
							tv.o.point3D.z.target = 0;
							tv.o.className = 'tvout';
						}
						this.className = 'tvover';
						this.point3D.z.target = -.5;
						tv.o = this;
					}
				}
				o.onclick = function ()
				{
					if (!tv.grid.zoomed)
					{
						tv.camera.x.target = this.point3D.x;
						tv.camera.y.target = this.point3D.y;
						tv.camera.zoom.target = tv.screen.w * 1.25;
						tv.grid.zoomed = this;
					} else {
						if (this == tv.grid.zoomed){
							tv.camera.x.target = 0;
							tv.camera.y.target = 0;
							tv.camera.zoom.target = tv.screen.w / (tv.grid.size + .1);
							tv.grid.zoomed = false;
						}
					}
				}
				o.calc = function ()
				{
					this.point3D.z.move(this.point3D.z.target, .5);
					var x = (this.point3D.x - tv.camera.x.position) * tv.camera.zoom.position;
					var y = (this.point3D.y - tv.camera.y.position) * tv.camera.zoom.position;
					var z = this.point3D.z.position * tv.camera.zoom.position;
					var xy = tv.angle.cx * y  - tv.angle.sx * z;
					var xz = tv.angle.sx * y  + tv.angle.cx * z;
					var yz = tv.angle.cy * xz - tv.angle.sy * x;
					var yx = tv.angle.sy * xz + tv.angle.cy * x;
					this.point2D.scale = tv.camera.focalLength / (tv.camera.focalLength + yz);
					this.point2D.x = yx * this.point2D.scale;
					this.point2D.y = xy * this.point2D.scale;
					this.point2D.w = Math.round(
					                   Math.max(
					                     0,
					                     this.point2D.scale * tv.camera.zoom.position * .8
					                   )
					                 );
					if (this.ratioImage > 1)
						this.point2D.h = Math.round(this.point2D.w / this.ratioImage);
					else
					{
						this.point2D.h = this.point2D.w;
						this.point2D.w = Math.round(this.point2D.h * this.ratioImage);
					}
				}
				o.draw = function ()
				{
					if (this.complete)
					{
						if (!this.loaded)
						{
							if (!this.img)
							{
								this.img = new Image();
								this.img.src = this.src;
							}
							if (this.img.complete)
							{
								this.style.visibility = 'visible';
								this.ratioImage = this.img.width / this.img.height;
								this.loaded = true;
								this.img = false;
							}
						}
						this.style.left = Math.round(
						                    this.point2D.x * this.point2D.scale +
						                    tv.screen.w - this.point2D.w * .5
						                  ) + 'px';
						this.style.top  = Math.round(
						                    this.point2D.y * this.point2D.scale +
						                    tv.screen.h - this.point2D.h * .5
						                  ) + 'px';
						this.style.width  = this.point2D.w + 'px';
						this.style.height = this.point2D.h + 'px';
						this.style.borderWidth = Math.round(
						                           Math.max(
						                             this.point2D.w,
						                             this.point2D.h
						                           ) * tv.grid.borderSize * .01
						                         ) + 'px';
						this.style.zIndex = Math.floor(this.point2D.scale * 100);
					}
				}
			}
		}
		tv.resize();
		mouse.y = tv.screen.y + tv.screen.h;
		mouse.x = tv.screen.x + tv.screen.w;
		tv.run();
	},
	resize : function ()
	{
		var o = tv.screen.obj;
		tv.screen.w = o.offsetWidth / 2;
		tv.screen.h = o.offsetHeight / 2;
		tv.camera.zoom.target = tv.screen.w / (tv.grid.size + .1);
		for (tv.screen.x = 0, tv.screen.y = 0; o != null; o = o.offsetParent)
		{
			tv.screen.x += o.offsetLeft;
			tv.screen.y += o.offsetTop;
		}
	},

	run : function ()
	{
		tv.angle.x.move(-(mouse.y - tv.screen.h - tv.screen.y) * .0025, .1);
		tv.angle.y.move( (mouse.x - tv.screen.w - tv.screen.x) * .0025, .1);
		tv.camera.x.move(tv.camera.x.target, tv.grid.zoomed ? .25 : .025);
		tv.camera.y.move(tv.camera.y.target, tv.grid.zoomed ? .25 : .025);
		tv.camera.zoom.move(tv.camera.zoom.target, .05);
		tv.angle.cx = Math.cos(tv.angle.x.position);
		tv.angle.sx = Math.sin(tv.angle.x.position);
		tv.angle.cy = Math.cos(tv.angle.y.position);
		tv.angle.sy = Math.sin(tv.angle.y.position);
		for (var i = 0, o; o = tv.O[i]; i++)
		{
			o.calc();
			o.draw();
		}
		setTimeout(tv.run, 32);
	}
}

var mouse = {
	x : 0,
	y : 0
}
document.onmousemove = function(e)
{
	if (window.event) e = window.event;
	mouse.x = e.clientX;
	mouse.y = e.clientY;
	return false;
}

</script>
</head>
<body>
<div id="screen"></div>
<div id="bankImages">
<!--这里为了演示速度多，只调用了两张图片，用时候你可以加上你的图片-->
<c:forEach items="${requestScope.p_list }" var="p">
${p.type }
<img alt="" src="images/${p.image5}">
<img alt="" src="images/${p.image5 }">
</c:forEach>
</div>
<script type="text/javascript">
	onresize = tv.resize;
	tv.init();
</script>
</body>
</html>

