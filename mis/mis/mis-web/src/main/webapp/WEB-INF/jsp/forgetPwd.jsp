<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/register.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/footer&cbl.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/daohang.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/jquery-1.11.3.js" ></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/bootstrap.js" ></script>
		<title>找回密码</title>
	</head>
	<body>
	<div id="main">
		<nav class=" navbar-inverse" id="daohang">
				<div class="daohang">
					<div class="navbar-header clearfix">
						<button type="button" class="zd" id="zd" >
							<span class="glyphicon glyphicon-align-justify"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="daohangtiao">
						<span class="close"><a href="${pageContext.request.contextPath}/renderLogin.do"><i></i></a></span>					
					</div>						
				</div>
				
			</nav>
		<div class="main">
			<div class="container  ">
				<div class="c2">
					<a href=""></a><span>
						<img src="${pageContext.request.contextPath}/static/desk/img/logo.png" />
					</span></a>
					<p>从这里开启读书之旅</p>	
				</div>
				<div class="c3">
					<form id="pwd_form">
						
  						<div class="form-group">
    						<label for="password">请输入用户名</label>
    						<input type="text" class="form-control" name="uid"  id="_uid">
  							<span class="pp hide">此项必须填写</span>
  						</div>
  						<div class="form-group">
    						<label for="password">密码  <img class="help" src="${pageContext.request.contextPath}/static/desk/img/help.png" title="最少6位"/>*</label>
    						<input type="text" class="form-control" name="password" id="_password" value="">
    						
  						</div>
					</form>
					<div class="c3-1">
							<button type="button" class="btn btn-default btn1" onclick="search_button()">确认</button>  
					</div>
				</div>
			</div>
		</div>
		
	</div>
	</body>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/hp.js" ></script>
	<script type="text/javascript">
	//查找密码
	function search_button(){
		var uid = $("#_uid").val();
		 console.log(uid);
		$.ajax({
			type:'post',
			url:'${pageContext.request.contextPath}/anon/searchPwd.do?',
			data:$("#pwd_form").serialize(),
			dataType:'json',
			success:function(result){
				console.log(result);
	//			alert(result);
				$("#_password").attr("value",result);
			},
			error:function(){
				$("#error_message").text("出现未知错误！");
			}
			
		
		});
		
		
	}

	</script>
	
</html>
