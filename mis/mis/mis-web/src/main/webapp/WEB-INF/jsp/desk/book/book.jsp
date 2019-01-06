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
		<header id="header" data-spy="affix" data-offset-top="70">
			<nav class="navbar-inverse" id="daohang">
				<div class="daohang">
					<div class="navbar-header clearfix">
						<button type="button" class="zd" id="zd" >
							<span class="glyphicon glyphicon-align-justify"></span>
						</button>
						<a href="#" class="navbar-brand"><img src="${pageContext.request.contextPath}/static/desk/img/logo.png"/></a>
					</div>
					<div class="collapse navbar-collapse" id="daohangtiao">
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
							<li><a href="${pageContext.request.contextPath}/deskBook/render.do">爱读书</a></li>
							<li><a href="${pageContext.request.contextPath}/deskTravel/render.do">去旅行</a></li>
							<li><a href="${pageContext.request.contextPath}/deskTravel/tieshi1.do">小贴士</a></li>
							<li class="wd1"><a href="">热门</a>
								<ul class="wd2 clearfix">
										<li class="pull-left " style="width: 233px;">
										<p><a href="#" class="a1">热门图书</a></p>
										<ul class="ul1"> 
											<li><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=7" title="嫌疑人X的献身">嫌疑人X的献身</a></li>
											<li><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=8" title="房思琪的初恋乐园">房思琪的初恋乐园</a></li>
											<li><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=3" title="百夜行">百夜行</a></li>
											<li><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=19" title="第一夜">第一夜</a></li>
										</ul>		
									</li>
									<li class="pull-left clearfix" style="width: 219px;">
										<p><a href="#" class="a1">热门旅行</a></p>
										<ul class="ul1"> 
											<li><a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=7" title="埃及金字塔">埃及金字塔</a></li>
											<li><a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=6" title="英国巨石阵">英国巨石阵</a></li>
											<li><a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=1" title="上海迪士尼">大理</a></li>
											<li><a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=5" title="宁波方特">丽江</a></li>
										</ul>										
									</li>
									<li class="pull-left clearfix" style="width: 479px;">
										<p><a href="#" class="a1">小贴士</a></p>
										<ul class="ul1">
											<li><a href="${pageContext.request.contextPath}/deskTravel/tieshi1.do" title="去西藏旅行该准备什么">去西藏旅行该准备什么</a></li>
											<li><a href="${pageContext.request.contextPath}/deskTravel/tieshi2.do" title="去海边被晒伤了怎么办? ">去海边被晒伤了怎么办? </a></li>
											<li><a href="#" title=""></a></li>
											<li><a href="#" title=""></a></li>
										</ul>										
									</li>
								</ul>
							</li>
							
								
						</ul>
						<ul class="zcdl nav navbar-nav pull-right">
							<li id="helloname"><a href="${pageContext.request.contextPath}/perfectInfo/render.do" >${current_user.name}</a></li>
							<li id="tuichu"><a href="${pageContext.request.contextPath}/logout.do">退出</a></li>
						</ul>
					</div>					
				</div>
			
			</nav>
		</header>
		
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

			<div class="main2 container">
				<div class="col-lg-12 ">
					<div class="col-lg-3 border">
					  <ul id="book_biaoqian">
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=1">小说</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=2">随笔</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=3">编程</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=4">散文</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=5">诗歌</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=6">童话</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=7">漫画</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=8">推理</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=9">绘本</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=10">青春</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=11">科幻</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=12">言情</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=13">奇幻</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=14">武侠</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=15">历史</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=16">哲学</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=17">传记</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=18">设计</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=19">建筑</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=20">电影</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=21">管理</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=22">音乐</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=23">旅行</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=24">励志</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=25">职场</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=26">教育</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=27">美食</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=28">灵修</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=29">健康</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=30">家居</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=31">互联网</a></li>
					    <li><a href="${pageContext.request.contextPath}/deskBook/bookType.do?key=32">科普</a></li>
					   
					  </ul>
					</div>
					<div class="col-lg-9 border " id="manybook">
					   <ul>
					     <c:forEach items="${books}" var="Book">
					     <li>
			     			<div>
							<a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=${Book.id}"><img src="${pageContext.request.contextPath}/output/${Book.picUrl}"></a>
							  <p><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=${Book.id}">${Book.bookName}</a></p>
							  <p>${Book.author}</p>
							</div>
					     </li>
					     </c:forEach>
					   </ul>
					    
					</div>
				</div>
			</div>

			<div class="c11">

			   <div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 20px;">图书资讯</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
			  </div>
				<div class="container">
					<div id="kehu-carousel" class="carousel slide" data-interval ="false">
						<ol class="carousel-indicators">
							<li class="active" data-target="#kehu-carousel" data-slide-to = "0"></li>
							<li data-target="#kehu-carousel" data-slide-to = "1"></li>
							<li data-target="#kehu-carousel" data-slide-to = "2"></li>
						</ol>					
						<div class="carousel-inner">
							<div class="item active">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/book/book11.jpg"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">记得，要做最后出牌的人，出让别人觉得出其不意的牌，在他们以为你要输掉的时候，这样，你才能赢得牌局。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242;"></p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/book/book7.jpg"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">有时候读书是一种巧妙地避开思考的方法。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242">——赫尔普斯</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/book/book9.jpg"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">越是无能的人，越喜欢挑剔别人的错儿。</p>
										<p style="font-size:16px;text-align: right;color:#424242">——爱尔兰</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#kehu-carousel" data-slide="prev">
								<span class="glyphicon glyphicon-menu-left"></span>
							</a>
							<a class="right carousel-control" href="#kehu-carousel" data-slide="next">
								<span class="glyphicon glyphicon-menu-right"></span>
							</a>
						</div>
					</div>
				</div>

			</div>  
			<div class="c11">

			   <div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 20px;">我的书架</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
			  </div>
			<div class="col-lg-12" id="myboooks">
			          <ul>
					     <c:forEach items="${mybooks}" var="Book">
					    <li>
			     			<div>
							<a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=${Book.id}"><img src="${pageContext.request.contextPath}/output/${Book.picUrl}"></a>
							  <p><a href="${pageContext.request.contextPath}/deskBook/bookDtail.do?id=${Book.id}">${Book.bookName}</a></p>
							  <p>${Book.author}</p>
							</div>
					     </li>
					     </c:forEach> 
					  
			</div>				

			</div> 
			<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 20px;">最受欢迎的书评</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<c:forEach items="${hotComments}" var="comment">
				<div class="shuping">
				   <div class="col-lg-12 col-md-12">
				   
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/output/${comment.picUrl}" style="display:block;width:102px;">
				      </div>
				      <div class="col-lg-10 ">
				        <p class="p1">${comment.bookName}</p>
				        <p class="p2">评论者：${comment.name} </p>
				        <p class="p2">赞了&nbsp;${comment.praise}&nbsp;次</p>
						<p class="p3">
							${comment.content}</p>
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
