<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>签到记录</title>
<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
<%@ include file="/WEB-INF/jsp/signRecord/form.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/list.js"></script>
<script>
	$(function(){
		initGrid($('#dg'));	
	})
	function doSearch() {
		$('#dg').datagrid('load', {
			cname : $('#cname').val(),
			cnumber : $('#cnumber').val(),
		});
	}
</script>
</head>
<body>
	<table id="dg" class="easyui-datagrid"
		style="width: 100%; height: 515px;"
		url="${pageContext.request.contextPath}/signRecord/listpage.do"
		toolbar="#toolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="cname" width="40">姓名</th>
				<th field="cnumber" width="40">学号</th>
				<th field="openId" width="40">openId</th>
				<th field="signTime" width="40">签到时间</th>
				<th field="leaveTime" width="40">签退时间</th>
				<th field="duration" width="40">时长</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<div id="tb" style="padding: 3px">
			<span>姓名:</span> <input id="cname"
				style="line-height: 20px; border: 1px solid #ccc">
				<span>学号:</span> <input id="cnumber"
				style="line-height: 20px; border: 1px solid #ccc">  <a
				href="#" class="easyui-linkbutton" iconCls="icon-search"
				plain="true" onclick="doSearch()">查询</a>
		</div>
		<a href="#" id="add" class="easyui-linkbutton" iconCls="icon-add"
			plain="true">新增</a> <a href="#" id="update" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true">修改</a> <a href="#" id="remove"
			class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a> 
	</div>
</body>
</html>