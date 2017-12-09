<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/frozen/css/frozen.css">

<script src="${pageContext.request.contextPath}/static/frozen/lib/zepto.min.js"></script>
<script src="${pageContext.request.contextPath}/static/frozen/js/frozen.js"></script>
<title>签到</title>
</head>
<body ontouchstart>
        <header class="ui-header ui-header-positive ui-border-b">
            <i class="ui-icon-return" onclick="history.back()"></i><h1>在线签到</h1><button class="ui-btn">回首页</button>
        </header>

<section class="ui-container">
	<section id="table">
		<div class="demo-item">
        <div class="demo-block">
            <table class="ui-table ui-border">
                <thead>
                <tr><th>
                <div class="demo-item">
        			<div class="demo-block">
            			<div class="ui-label-list">
            			<label class="ui-label">姓名:</label>
                			<label class="ui-label" id="cname"></label>
            			</div>
        			</div>
    			</div>
    			</th></tr>
    			<tr><th>
                <div class="demo-item">
        			<div class="demo-block">
            			<div class="ui-label-list">
            			<label class="ui-label">学号:</label>
                			<label class="ui-label" id="cnumber"></label>
            			</div>
        			</div>
    			</div>
    			</th></tr>
                </thead>
                <tbody>
                <tr><td>
                <div class="demo-item">
        			<div class="demo-block"> 
            			<div class="ui-btn-wrap">
                			<button class="ui-btn-lg ui-btn-primary" id="sure">
                   				签到
                			</button>
            			</div>
        		</div>
    			</div>
    			</td></tr>
                <tr><td>
                <div class="demo-item">
        			<div class="demo-block"> 
            			<div class="ui-btn-wrap">
                			<button class="ui-btn-lg ui-btn-danger" id="leave">
                   				签离
                			</button>
            			</div>
        			</div>
    			</div>
                </tbody>
            </table>
        </div>
    	</div>
		<input type="hidden" id = "openId" placeholder="openId" name="openId" value="<%=request.getAttribute("openId")%>"/>
	</section>
</section>
<script>
        $('.ui-list li,.ui-tiled li').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
        $('.ui-header .ui-btn').click(function(){
            location.href= 'index.html';
        });
        
        $('#sure').click(function(){
        	$(document).ready(function(){
        		$.ajax({
        			type : 'GET',
        			url : '${pageContext.request.contextPath}/anon/sign.do',
        			data : {'openId' : $('#openId').val()},
        			async :false,
        			success : function(data){
        				if((data==0)) alert('签到失败');
        				if((data==2)) alert('请先签退');
        				else{
        					alert('签到成功');
        				}
        			},
        			error : function(e){
        				alert('出错');
        			}
        		})
        	});
        });
        
        $('#leave').click(function(){
        	$(document).ready(function(){
        		$.ajax({
        			type : 'GET',
        			data : {'openId' : $('#openId').val()},
        			url : '${pageContext.request.contextPath}/anon/leave.do',
        			async :false,
        			success : function(data){
        				if((data==0)) alert('签到出错');
        				if((data==2)) alert('请先签到')
        				else{
        					alert('签退成功');
        				}
        			},
        			error : function(e){
        				alert('出错');
        			}
        		})
        	});
        });
</script>
<script>
	$(document).ready(function(){
		$.ajax({
			type : 'GET',
			data : {'openId' : $('#openId').val()},
			url : '${pageContext.request.contextPath}/anon/getClientInfo.do',
			dataType : 'json',
			async :false,
			success : function(data){
				if((data=="")) alert('openId传值出错');
				else{
					var label=document.getElementById('cname'); 
					label.innerText=data.cname; 
					$('#cname').html(data.cname); 
					var laben=document.getElementById('cnumber'); 
					laben.innerText=data.cname; 
					$('#cnumber').html(data.cnumber); 
				}
			},
			error : function(e){
				alert('出错');
			}
		})
	});
</script>
</body>
</html>