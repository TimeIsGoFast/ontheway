<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设备管理信息</title>
<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
<%@ include file="/WEB-INF/jsp/equipmentInfo/form.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/list.js"></script>
<script>
	$(function(){
		initGrid($('#dg'));	
	})
	function doSearch() {
		$('#dg').datagrid('load', {
			sortId : $('#sortId').val(),
			brand : $('#brand').val(),
		});
	}
</script>
</head>
<body>
	<table id="dg" class="easyui-datagrid"
		style="width: 100%; height: 515px;"
		url="${pageContext.request.contextPath}/equipmentinfo/listpage.do"
		toolbar="#toolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="sortId" width="40">固定资产号</th>
				<th field="brand" width="40">商标</th>
				<th field="equipmentType" width="40">设备类型</th>
				<th field="model" width="40">设备型号</th>
				<th field="state" width="40">设备状态</th>
			    <th field="standard" width="40">规格</th>
				<th field="price" width="40">单价</th>
				<th field="factory" width="40">生产厂商</th>
				<th field="factoryNumber" width="40">出厂号</th>
				<th field="dateofProduction" width="40">出厂日期</th>
				<th field="dateofBuy" width="40">购置日期</th>
				<th field="destroyedDate" width="40">损坏日期</th>
				<th field="dateofRemove" width="40">搬离日期</th>
				<th field="address" width="40">存放地点</th>
				<th field="remark" width="40">备注</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<div id="tb" style="padding: 3px">
			<span>固定资产号:</span> <input id="sortId"
				style="line-height: 20px; border: 1px solid #ccc">
				<span>商标:</span> <input id="brand"
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