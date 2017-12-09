<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>设备管理系统</title>
<%@include file="/WEB-INF/jsp/common/header.jsp" %>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/index.js"></script>
<script type="text/javascript">
$(function(){
	initNav($('#nav'),$('#tabs'),'${pageContext.request.contextPath}/resource/getResourcesByPidAndType.do?type=0&pid=','');
})
</script>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 78px; background-color: #E0ECFF">
		<table style="padding: 5px" width="100%">
			<tr>
				<td width="50%"><img
					src="${pageContext.request.contextPath}/static/images/bglogo.png" /></td>
				<td valign="bottom" align="right" width="50%"><font size="3">&nbsp;&nbsp;<strong>欢迎：</strong></font>【${user.name}】
				<a href="${pageContext.request.contextPath}/logout.do" class="easyui-linkbutton" data-options="plain:true" icon="icon-back"
					onclick="login()">注销</a>
				</td>
			</tr>
		</table>
	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" data-options="iconCls:'icon-home'">
				<div align="center" style="padding-top: 100px">
					<font color="red" size="10">欢迎使用</font>
				</div>
			</div>
		</div>
	</div>
	<div id="nav" region="west" style="width: 200px" title="导航菜单"
		split="true"></div>
	<div region="south" style="height: 25px; padding: 5px;" align="center">
		版权所有 2015</div>
</body>
</html>