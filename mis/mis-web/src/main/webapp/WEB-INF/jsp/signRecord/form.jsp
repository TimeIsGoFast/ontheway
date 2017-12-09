<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/form.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/form.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(function() {
		var f = new Form();
		f.dlgObj = $('#dlg');
		f.dgObj = $('#dg');
		f.formObj = $('#fm');
		f.saveUrl = '${pageContext.request.contextPath}/signRecord/save.do';
		f.updateUrl = '${pageContext.request.contextPath}/signRecord/update.do?id=';
		f.deleteUrl = '${pageContext.request.contextPath}/signRecord/delete.do';
		$('#add').click(function() {
			f.openAdd();
		});
		$('#update').click(function() {
			f.openUpdate();
		});
		$('#remove').click(function() {
			f.remove();
		});
		$('#save').click(function() {
			f.save();
		});
		$('#cancel').click(function() {
			f.cancel();
		});
	})
	function formatDate(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		var h = date.getHours();
		var mn = date.getMinutes();
		var s = date.getSeconds();
		return y+'-'+m+'-'+d+' '+h+':'+mn+':'+s;
	}
	function parseDate(value){
		var date = new Date();
		date.setTime(value);
		return date;
	}
</script>
<div id="dlg" class="easyui-dialog"
	style="width: 500px; height: 400px; padding: 10px 20px" closed="true"
	buttons="#dlg-buttons">
	<div class="ftitle">详细信息</div>
	<form id="fm" method="post" novalidate>
		<div class="fitem">
			<label>姓名:</label> <input name="cname">
		</div>
		<div class="fitem">
			<label>学号:</label> <input name="cnumber">
		</div>
		<div class="fitem">
			<label>openId:</label> <input name="openId" disable>
		</div>	
		<div class="fitem">
			<label>签到时间:</label> <input name="signTime">
		</div>	
		<div class="fitem">
			<label>签退时间:</label> <input name="leaveTime">
		</div>	
		<div class="fitem">
			<label>时长:</label> <input name="duration">
		</div>	
	</form>
</div>
<div id="dlg-buttons">
	<a href="#" id="save" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="#" id="cancel" class="easyui-linkbutton" iconCls="icon-cancel">取消</a>
</div>
