<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生登录</title>
</head>
<body>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
   ghyzm();
});  
	//设置一个全局的变量，便于保存验证码
    var code;
    function createCode(){
        //首先默认code为空字符串
        code = '';
        //设置长度，这里看需求，我这里设置了4
        var codeLength = 4;
        //设置随机字符
        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z');
        //循环codeLength 我设置的4就是循环4次
        for(var i = 0; i < codeLength; i++){
            //设置随机数范围,这设置为0 ~ 36
             var index = Math.floor(Math.random()*36);
             //字符串拼接 将每次随机的字符 进行拼接
             code += random[index]; 
        }
        //将拼接好的字符串赋值给展示的Value
       $("cite").html(code);
    }

    //下面就是判断是否== 的代码，无需解释
    function validate(){
        var oValue = document.getElementById('yzm').value.toUpperCase();
        if(oValue ==0){
            alert('请输入验证码');
        }else if(oValue != code){
            alert('验证码不正确，请重新输入');
            oValue = ' ';
            createCode();
        }else{
        	bd();
        }
    }
    function   ghyzm(){
    	 createCode();
    }
    function bd(){
		$.ajax({
			type:'post',
			url:"Admgo?action=stu",
			data:{user:$("#user").val(),password:$("#password").val()},
			success:function(data){
				if(data>0){
					window.location.href='mainstu.html';
				}else{
					alert("账号密码有误!");
				}	
			}
		})
	}

</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>智能时代学生管理系统</span>    
    <ul>
    <li><a href="index.html">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="#">注册用户</a></li>
    <li><a href="#">忘记密码</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox loginbox1">
    
    <ul>
    <li><input name="" type="text" id="user" class="loginuser"  onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="password" id="password"  class="loginpwd" value="" onclick=""/></li>
    <li class="yzm">
    <span><input name="" type="text" value="验证码" onclick="JavaScript:this.value=''" id="yzm"/></span><cite onclick="ghyzm();">X3D5S</cite> 
    </li>
    <li style="text-align: center;"><input name="" type="button" class="loginbtn" value="登录"  onclick="validate()"/></li>
    </ul>
    </div>
    
    </div>
    
</body>
</html>