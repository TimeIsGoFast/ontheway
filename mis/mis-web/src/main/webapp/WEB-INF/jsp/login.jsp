<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户登录 - 设备管理系统</title>
<%@include file="/WEB-INF/jsp/common/header.jsp"%>
<style type="text/css">
body {
	background:
		url(${pageContext.request.contextPath}/static/images/loginbg.jpg) top
		center no-repeat;
	background-size: cover;
}
</style>
<script type="text/javascript">
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
					$.messager.show({
						title : 'Error',
						msg : result.msg
					});
				}
			}
		});
	}
	
</script>
</head>
<body>
	<div id="dlg" id="win" class="easyui-dialog"
		style="width: 300px; height: 180px;" title="系统登录">
		<form id="fm" method="post" style="padding: 10px 20px 10px 40px;">
			<p>
				用户名: <input id="username" type="text" name="username"
					class="easyui-validatebox" required="true">
			</p>
			<p>
				密&nbsp;码: <input type="password" name="password"
					class="easyui-validatebox" required="true">
			</p>
			<div style="padding: 5px; text-align: center;">
				<a href="#" class="easyui-linkbutton" icon="icon-ok"
					onclick="login()">登录</a> <a href="#" class="easyui-linkbutton"
					icon="icon-cancel" onclick="$('#fm')[0].reset()">重置</a>
			</div>
		</form>
	</div>
</body>
</html>