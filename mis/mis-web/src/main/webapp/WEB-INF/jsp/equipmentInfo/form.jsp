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
		f.saveUrl = '${pageContext.request.contextPath}/equipmentinfo/save.do';
		f.updateUrl = '${pageContext.request.contextPath}/equipmentinfo/update.do?id=';
		f.deleteUrl = '${pageContext.request.contextPath}/equipmentinfo/delete.do';
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
			<label>固定资产号:</label> <input name="sortId" class="easyui-validatebox"
				required="true">
		</div>
		<div class="fitem">
			<label>商标:</label> <input name="brand">
		</div>
		<div class="fitem">
			<label>设备类型:</label> <input name="equipmentType">
		</div>
		<div class="fitem">
			<label>设备型号</label> <input name="model">
		</div>
		<div class="fitem">
			<label>设备状态</label> <input name="state">
		</div>
		<div class="fitem">
			<label>规格</label> <input name="standard">
		</div>
		<div class="fitem">
			<label>单价</label> <input name="price">
		</div>
		<div class="fitem">
			<label>生产厂商</label> <input name="factory">
		</div>
		<div class="fitem">
			<label>出厂号</label> <input name="factoryNumber">
		</div>
		<div class="fitem">
			<label>出厂日期</label> <input name="dateofProduction" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
		</div>
		<div class="fitem">
			<label>购置日期</label> <input name="dateofBuy" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
		</div>
		<div class="fitem">
			<label>损坏日期</label> <input name="destroyedDate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
		</div>
		<div class="fitem">
			<label>搬离日期</label> <input name="dateofRemove" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
		</div>
		<div class="fitem">
			<label>存放地点</label> <input name="address">
		</div>
		<div class="fitem">
			<label>备注</label> <input name="remark">
		</div>
	</form>
</div>
<div id="dlg-buttons">
	<a href="#" id="save" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="#" id="cancel" class="easyui-linkbutton" iconCls="icon-cancel">取消</a>
</div>
