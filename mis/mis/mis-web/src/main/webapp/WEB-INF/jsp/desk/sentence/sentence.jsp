<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/templet.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/footer&cbl.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/daohang.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/jquery-2.1.1.min.js" ></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/book.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/templet.js"></script>
		<title></title>
	</head>
	<body>
	<div id="main">
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
		  	<div class="jumbotron">
		  	
			    <div class="container">
			    <div class="row">
				    <div class="col-sm-12 col-md-12 col-lg-12">
				    	<span class="label label-default">Default</span>
						<span class="label label-primary">Primary</span>
						<span class="label label-success">Success</span>
						<span class="label label-info">Info</span>
						<span class="label label-warning">Warning</span>
						<span class="label label-danger">Danger</span>
				    
				    </div>
				 </div> 
				 <ul class="list-group">
					  <li class="list-group-item list-group-item-success">Dapibus ac facilisis in</li>
					  <li class="list-group-item list-group-item-info">Cras sit amet nibh libero</li>
					  <li class="list-group-item list-group-item-warning">Porta ac consectetur ac</li>
					  <li class="list-group-item list-group-item-danger">Vestibulum at eros</li>
					</ul>
					<div class="list-group">
					  <a href="#" class="list-group-item list-group-item-success">Dapibus ac facilisis in</a>
					  <a href="#" class="list-group-item list-group-item-info">Cras sit amet nibh libero</a>
					  <a href="#" class="list-group-item list-group-item-warning">Porta ac consectetur ac</a>
					  <a href="#" class="list-group-item list-group-item-danger">Vestibulum at eros</a>
					</div>  
				
					
					 <div class="panel panel-primary">Dapibus ac facilisis in</div>
					<div class="panel panel-primary">
					      <div class="panel-heading">
					        <h3 class="panel-title">Panel title</h3>
					      </div>
					      <div class="panel-body">
					        Panel content
					      </div>
					    </div>
					<div class="panel panel-info">...</div>
					<div class="panel panel-warning">...</div>
					<div class="panel panel-danger">...</div>
					
					 
			     </div>
			   
			  	<div class="footer">
				<div class="f1">
					<div class="container">
						<div class="ff1 col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div class="ff1-1">在路上 · 优雅去读书旅行</div>
							<div class="ff1-2">读书与旅行，一个都不能少的生活真美妙</div>			
						</div>
			
					</div>
									
				</div>
				<div class="f2">
					<div class="container">
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>
						<p>版权所有 2017-2018 浙江万里学院电子与计算机学院 陈欣苑   版本: V3.6</p>
					</div>
				</div>
			</div>
			</div>

	</div>
	</body>	
	<script>
	var path='${pageContext.request.contextPath}';
	</script>
</html>
