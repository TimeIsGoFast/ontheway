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
			   
				  <ul class="nav nav-pills">
					  <li role="presentation" class="active"><a href="#">Home</a></li>
					  <li role="presentation"><a href="#">Profile</a></li>
					  <li role="presentation"><a href="#">Messages</a></li>
					</ul>
				  <br>
				  
				 <ul class="list-group">
					  <li class="list-group-item list-group-item-success">自己把自己说服了，是一种理智的胜利;自己被自己感动了，是一种心灵的升华;自己把自己征服了，是一种人生的成熟。</li>
					  <br/>
					  <li class="list-group-item list-group-item-info">有些人会一直刻在记忆里的，即使忘记了他的声音，忘记了他的笑容，忘记了他的脸，但是每当想起他时的那种感受，是永远都不会改变的。</li>
					  <br/>
					  <li class="list-group-item list-group-item-warning">怨言是上天得至人类最大的供物，也是人类祷告中最真诚的部分。</li>
					  <br/>
					  <li class="list-group-item list-group-item-danger">真诚是美酒，年份越久越醇香浓型;真诚是焰火，在高处绽放才愈是美丽;真诚是鲜花，送之于人手有余香。一颗孤独的心需要爱的滋润;一颗冰冷的心需要友谊的温暖;一颗绝望的心需要力量的托。</li>
					  <br/>
					</ul>
					<div class="list-group">
					  <a href="#" class="list-group-item list-group-item-success">自己把自己说服了，是一种理智的胜利;自己被自己感动了，是一种心灵的升华;自己把自己征服了，是一种人生的成熟。</a>
					    <li class="list-group-item list-group-item-success">自己把自己说服了，是一种理智的胜利;自己被自己感动了，是一种心灵的升华;自己把自己征服了，是一种人生的成熟。</li>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-info">有些人会一直刻在记忆里的，即使忘记了他的声音，忘记了他的笑容，忘记了他的脸，但是每当想起他时的那种感受，是永远都不会改变的。</a>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-warning">怨言是上天得至人类最大的供物，也是人类祷告中最真诚的部分。</a>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-danger">真诚是美酒，年份越久越醇香浓型;真诚是焰火，在高处绽放才愈是美丽;真诚是鲜花，送之于人手有余香。一颗孤独的心需要爱的滋润;一颗冰冷的心需要友谊的温暖;一颗绝望的心需要力量的托。</a>
					  <br/>
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
			   <nav aria-label="...">
				  <ul class="pager">
				    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
				    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
				  </ul>
				</nav>
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
