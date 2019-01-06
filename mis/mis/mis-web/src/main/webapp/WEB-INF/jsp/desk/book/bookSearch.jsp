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
		<div class="main">
		  	<div class="main1">
				<div class="container">
					<div class="b1">
						 <div class="col-lg-12" >
						    <div class="input-group col-lg-6" style="margin:auto;">
						      <input type="text" class="form-control" id="searchBook" placeholder="输入书名、作者">
						      <span class="input-group-btn">
						        <button class="btn btn-info" type="button" id="btn_search"><a class="glyphicon glyphicon-search"></a></button>
						      </span>
					
						    </div>
						  
						  </div>
						  <br>
						<hr />
					</div>
				</div>
			</div>
			<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">搜索结果</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<c:forEach items="${books}" var="Book">
				<div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/output/${Book.picUrl}" style="display:block;width:102px;">
				      </div>
				      <div class="col-lg-10 ">
				        <a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=${Book.id}"><p class="p1" style="font-size:20px">${Book.bookName}</p></a>
				        <p class="p2">作者：${Book.author}</p>
				        <p class="p2">出版社：${Book.publics}</p>
				        <p class="p2" >价格：${Book.price} 元</p>
						<p class="p3">简介：${Book.descr}
							</p>
				      </div>
				   </div>

				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
			 </c:forEach>
            </div>
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
	</body>	
	<script>
	var path='${pageContext.request.contextPath}';
	</script>
</html>
