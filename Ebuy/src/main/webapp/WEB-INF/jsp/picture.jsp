
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
<title>分层轮播3d旋转切换</title>

    <style type="text/css">
        * {
            margin:0px;
            padding:0px;
        }
       .pic {
            margin:100px auto 0px;
            /*border:1px solid #ff0000;*/
            width:120px;
            height:180px;
            position:relative;
            transform-style:preserve-3d;
            transform:perspective(800px) rotateX(-10deg) rotateY(0deg);
            
        }
        body {
            background-color:#000000;
        }
       div.pic img {
           cursor:pointer;
            position:absolute;
            width:100%;
            height:100%;
            border-radius:5px;
         
         
        }
        p{
            width:1200px;
            height:1200px;
            
            position:absolute;
            left:50%;top:100%;
            margin-top:-600px;
            margin-left:-600px;
            transform:rotateX(90deg);
            border-radius:600px;
        }
    </style>
    <!--<script language="javascript">
        function imgdragstart() { return false;}
    </script>-->

</head>

<body style="width:100%;height:100%">
    <div class="pic">
   <!--      <img src="images/1.jpg" draggable="false" />
       <img src="images/1.jpg" draggable="false" />
        <img src="images/1.jpg" draggable="false" />
         <img src="images/1.jpg" draggable="false" />
         <img src="images/1.jpg" draggable="false" />
          <img src="images/1.jpg" draggable="false" />
          <img src="images/1.jpg" draggable="false" />
        <img src="images/1.jpg" draggable="false" />
         <img src="images/1.jpg" draggable="false" />--> 
        <p></p>
     <c:forEach items="${requestScope.p_list }" var="p">
 <p>  ${p.type}</p>
        <img src="images/${p.image3 }"  />
        <img src="images/${p.image4 }"  />
        <img src="images/${p.image5 }" />
        <img src="images/${p.image6 }"  />
        <img src="images/${p.image7 }" />
        <img src="images/${p.image4 }"  />
        <img src="images/${p.image1 }"  />
        <img src="images/${p.image1 }"  />
        <img src="images/${p.image1 }"  />
       
        </c:forEach>
    </div>

    
    
    
    <script language="javascript">
        for (i in document.images) document.images[i].ondragstart = imgdragstart;
    </script>
    <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
    <script>
        $(function (){
            var imgl = $("div.pic img").size();
            var deg = 360/imgl;
            var roY = 0;
            var rox = -10;
            var xn = 0, yn = 0;
            var play = null;
			
            $("div.pic img").each(function (i) {
                $(this).css({
                    "transform": "rotateY("+i*deg+ "deg) translateZ(350px)"
                });
                $(this).attr('ondragstart', 'return false');
            });
            $(document).mousedown(function (ev) {
        
                var x_ = ev.clientX;
                var y_ = ev.clientY;
                clearInterval(play);
                $(this).bind("mousemove", function (ev) {
				
                    var x = ev.clientX;
                    var y = ev.clientY;

                    xn = x - x_;
                    yn = y - y_;
                    varyn = y-y_;
                    roY += xn * 0.2;
                    rox -= yn * 0.1;
                  
                    $('div.pic').css({
                        transform: 'perspective(800px) rotateX('+rox+'deg) rotateY(' + roY + 'deg)'
                    })

                    x_ = ev.clientX;
                    y_ = ev.clientY;
                });
            }).mouseup(function () {
                $(this).unbind("mousemove");
              var play=setInterval(function () {
                   xn *= 0.95;
                   yn *= 0.95;
                   if (Math.abs(xn) < 1 && Math.abs(yn)<1) clearInterval(play);

                   roY += xn * 0.2;
                   rox -= yn * 0.1;
                   $('div.pic').css({
                       transform: 'perspective(800px) rotateX(' + rox + 'deg) rotateY(' + roY + 'deg)'
                   })
                },30)
            });
        });
    </script>    
</body>
</html>