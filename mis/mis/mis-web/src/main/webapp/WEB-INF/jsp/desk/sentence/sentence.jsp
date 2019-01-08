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
				  
					<div class="list-group">
					 <a href="#" class="list-group-item list-group-item-success">有些人会一直刻在记忆里的，即使忘记了他的声音，忘记了他的笑容，忘记了他的脸，但是每当想起他时的那种感受，是永远都不会改变的。</a>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-info">有些人会一直刻在记忆里的，即使忘记了他的声音，忘记了他的笑容，忘记了他的脸，但是每当想起他时的那种感受，是永远都不会改变的。</a>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-warning">怨言是上天得至人类最大的供物，也是人类祷告中最真诚的部分。</a>
					  <br/>
					  <a href="#" class="list-group-item list-group-item-danger">真诚是美酒，年份越久越醇香浓型;真诚是焰火，在高处绽放才愈是美丽;真诚是鲜花，送之于人手有余香。一颗孤独的心需要爱的滋润;一颗冰冷的心需要友谊的温暖;一颗绝望的心需要力量的托。</a>
					  <br/>
					</div>  
					
				<nav aria-label="...">
				  <ul class="pager">
				    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
				    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
				  </ul>
				</nav>
			     </div>
			
				<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
			</div>

	</div>
	</body>	
	<script>
	var path='${pageContext.request.contextPath}';
	</script>
</html>
