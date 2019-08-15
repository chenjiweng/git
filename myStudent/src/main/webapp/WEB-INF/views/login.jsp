<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script language="javascript">
	$(function(){
    $('.loginbox0').css({'position':'absolute','left':($(window).width()-810)/2});
	$(window).resize(function(){  
    $('.loginbox0').css({'position':'absolute','left':($(window).width()-810)/2});
    })  
});  
</script> 
</head>
<body>
<body style="background-color:#1c77ac; background-image:url(images/20190321215737.gif);background-size:1522px 929px; background-repeat:no-repeat; background-position:center top; overflow:hidden;">


<div class="logintop">    
    <span>欢迎进入智能时代学生管理系统</span>    
	    <ul>
	    <li><a href="index.html">回首页</a></li>
	    <li><a href="#">帮助</a></li>
	    <li><a href="#">关于</a></li>
	    </ul>    
</div>
    
    <div class="loginbody1">
    
    <span class="systemlogo"></span> 
	    <div class="loginbox0">
		    <ul class="loginlist">
		    <li><a href="studentLogin"><img src="images/i07.png"  alt="学员登录系统"/><p><br />学员登录系统</p></a></li>
		    <li><a href="login4.html"><img src="images/icon13.png"  alt="老师登录系统"/><p><br />教员登录系统</p></a></li>
		    <li><a href="loginadm.html"><img src="images/icon12.png"  alt="管理员登录系统"/><p><br />管理员登录系统</p></a></li>
		    </ul>
	    </div>
   </div>
</body>
</html>