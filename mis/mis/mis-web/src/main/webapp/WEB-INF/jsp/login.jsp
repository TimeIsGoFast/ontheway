<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/login.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/footer&cbl.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/daohang.css" />
		<script src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.min.js"></script>	
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/templet.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.base64.js" ></script>
		<title>登录</title>
	</head>
	<body onload="getCookie();">
		<div id="main">
			<nav class=" navbar-inverse" id="daohang">
				<div class="daohang">
					<div class="navbar-header clearfix">
						<button type="button" class="zd" id="zd" >
							<span class="glyphicon glyphicon-align-justify"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="daohangtiao">
						<span class="close"><a href="index.html"><i></i></a></span>					
					</div>						
				</div>
			</nav>
			<div class="main">	
			<div class="container">
				<div class="c2">
					<a href=""></a><span>
						<img src="${pageContext.request.contextPath}/static/desk/img/logo.png" />
					</span>
					<p>从这里开启精彩的人生</p>	
				</div>
				<div class="c3">
					<form id="fm">
						<div class="form-group">
    						<label for="usernameoremail">用户名&nbsp;&nbsp;<span id="error_message" ></span></label>
    						<input type="text" class="form-control" name="username" id="username">
  						</div>
  						<div class="form-group">
    						<label for="password">密码</label>
    						<input type="password" class="form-control" name="password" id="password">
  						</div>
  						<div class="checkbox">
    						<label>
     		 					<input type="checkbox" name="rememberMe" id="rememberMe"> 记住我（请在私人计算机上使用此功能）
    						</label>
  						</div>
  						<div class="c3-1">
							<button id="denglu" type="button" class="btn btn-default btn1" onclick="login()">登录</button>  
							<a href="${pageContext.request.contextPath}/register.do" type="button" class="btn btn-default btn2">注册</a>
						</div>
						
						<div class="c3-3 clearfix">
							<a href="${pageContext.request.contextPath}/forgetPwd.do"  class="pull-right">忘记密码？点这里找回</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		</div>		
	</body>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery.easyui.min.js"></script>
	
	
	<script>
	//设置cookie  
    function setCookie(){
        var loginCode = $("#username").val(); //获取用户名信息    
        var pwd = $("#password").val(); //获取登陆密码信息    
        var checked = $("input[type='checkbox']").is(':checked');//获取“是否记住密码”复选框  
        console.log("setCookie方法是否记住密码："+checked);
        console.log(loginCode);
        console.log(pwd);
        if(checked){ //判断是否选中了“记住密码”复选框    
            //设置cookie过期时间
            var date = new Date();
            date.setTime(date.getTime()+3600000*1000);//只能这么写，60表示60秒钟
            //console.log("cookie过期时间："+date);
            $.cookie("login_code",loginCode,{ expires: date, path: '/' });//调用jquery.cookie.js中的方法设置cookie中的用户名    
            $.cookie("pwd",$.base64.encode(pwd),{ expires: date, path: '/' });//调用jquery.cookie.js中的方法设置cookie中的登陆密码，并使用base64（jquery.base64.js）进行加密
        }else{
            $.cookie("login_code", null);
            $.cookie("pwd", null);
        }
    }

    //清除所有cookie函数
    function clearAllCookie() {
        var date=new Date();
        date.setTime(date.getTime()-10000);
        var keys=document.cookie.match(/[^ =;]+(?=\=)/g);
        console.log("需要删除的cookie名字："+keys);
        if (keys) {
            for (var i =  keys.length; i--;)
                document.cookie=keys[i]+"=0; expire="+date.toGMTString()+"; path=/";
        }
    }
    //获取cookie    
    function getCookie(){
        var loginCode = $.cookie("login_code"); //获取cookie中的用户名    
        var pwd =  $.cookie("pwd"); //获取cookie中的登陆密码  
        console.log("获取cookie:账户："+loginCode);
        console.log("获取cookie:密码："+pwd);
        if (!loginCode||loginCode==0) {
            console.log("账户："+!loginCode);
            //alert("请输出内容！");
        }else{
            $("#username").val(loginCode);
        }
        if(!pwd||pwd==0){
            console.log("密码："+!pwd);
        }else{
            //密码存在的话把密码填充到密码文本框    
            //console.log("密码解密后："+$.base64.decode(pwd));
            $("#password").val($.base64.decode(pwd));
            //密码存在的话把“记住用户名和密码”复选框勾选住    
            $("[name='rememberMe']").attr("checked","true");
        }

    }
	
	
	
	    var loginUrl = 'login.do';
		var successUrl = 'index.do';
		
		function login() {
 $('#fm').form('submit', {
			url : loginUrl,
			onSubmit : function() {
				return $(this).form('validate');
			},
			
			
			
			success : function(result) {
				var result = eval('(' + result + ')');
				if (result.success) {
					window.location = successUrl;
				} else {			
					$("#error_message").text(result.msg);
				}
			}
		}); 
 
		 //判断是否选中复选框，如果选中，添加cookie  
		 var jizhupwd=$("input[type='checkbox']").is(':checked');
		 console.log("是否记住密码："+jizhupwd);
		// alert(jizhupwd);
		 if(jizhupwd){
		     //添加cookie    
		     setCookie();
		 }else{
		     clearAllCookie();
		 }
			
		}   
		
		
		
	</script>
</html>
