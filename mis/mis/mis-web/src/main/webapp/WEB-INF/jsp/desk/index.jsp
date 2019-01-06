<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/daohang.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/style.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/footer&cbl.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/jquery-2.1.1.min.js" ></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/hp.js"></script>
    	<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/index.js"></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/templet.js" ></script>
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
		<title></title>
	</head>
	<body>
	<div id="main">
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
		<div class="c">
			    <img class="img" src="${pageContext.request.contextPath}/static/desk/img/child.jpg"/>
				<div class="video">
					<video autoplay="autoplay" muted="muted" loop="loop">
						<source type="video/webm" src="${pageContext.request.contextPath}/static/desk/video/video1.webm"></source>
						<source type="video/mp4" src="${pageContext.request.contextPath}/static/desk/video/video1.mp4"></source>
					</video>
				</div>
				<div class="cover">
					
					<div class="container cc1">
						<div class="cover1 col-lg-6 col-md-6 pull-right" >
							<div class="co1 hide" id="con">
								<!--<p>做一个响应式网站</p>
								<p>让世界更好的了解您</p>-->
								<span>读书和旅行<br>总要有一个在路上</span>
							</div>
							<div class="co1" id="show"></div>  
							<div class="co2" >
								<p>真阅读和旅行平台</p>
 								<p>从来旅行和读书都是我们认识世界的方式</p>
							</div>
							<a class="co3" href="${pageContext.request.contextPath}/register.do" >免 费 创 建 账 户</a>
						</div>
					</div>
					<div class="container cc1">
						<div class="coverA"><a href="">
							<i class="glyphicon glyphicon-chevron-down"></i>
						</a></div>
					</div>
				</div>			
			</div>
		<div class="main">
			<div class="c1">
				<div class="container">
					<h1 class="hh1" style="font-size: 44px;padding-bottom: 20px;">更轻松，更简单</h1>
					 <p class="p1" >使阅读更轻松</p>
					<p class="p1" >使旅行变得更加的简单</p>
					<!--<img class="img-responsive" src="${pageContext.request.contextPath}/static/desk/${pageContext.request.contextPath}/static/desk/img/index_3.jpg" style="margin:0 auto;"/>	 -->
				</div>
			</div>
			<div class="c2">
				<div class="content" style="overflow: hidden;margin: 0 auto;max-width: 2500px;" >
				  	<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 pull-left pic1 clearfix" id="c2-1" >
						<img  src="${pageContext.request.contextPath}/static/desk/img/p1-02.png" style="width: 100%;"/>
				  	</div>
				 	<div class="w1 col-lg-5 col-md-5 col-sm-12 col-xs-12 pull-left clearfix" id="c2-2">
				 		<div style="width: 80%;margin: 0 auto;">
				 			<h1 class="hh1" style="font-size: 34px;color:#3ea3ff ;padding-bottom: 10px;">拥有海量的书籍，轻松找到自己适合的</h1>
							<p class="p1" style="font-size: 15px;line-height: 30px;">将海量书籍装进口袋，书籍、杂志、新闻、娱乐、美图、视频……应有尽有。想找什么内容，一键搜索，精准定位，即搜即看，非常方便。设计焕然一新，界面做减法 精致阅读体验。界面简约清新，精简画面和线条，图标简单易辨，打造一种轻松、安静的阅读体验。</p>
				 		</div>
				  	</div>
				</div>
			</div>
			<div class="c3"  id="c3">
				<div class="content" style="overflow: hidden;margin: 0 auto;max-width: 2500px;">					
					<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 pull-right pic2 clearfix" id="c3-2">
						<img src="${pageContext.request.contextPath}/static/desk/img/p1-04.png" style="width: 100%;"/>
					</div>
					<div class="w1 col-lg-5 col-md-5 col-sm-12 col-xs-12 pull-left clearfix" id="c3-1">
				 		<div style="width: 80%;margin: 0 auto;">
				 			<h1 class="hh1" style="font-size: 34px;color:#3ea3ff ;padding-bottom: 20px;">使旅行变得更加简单</h1>
							<p class="p1" style="font-size: 15px;line-height: 30px;">在路上网站，根据收集到的各种旅游攻略、旅行记录分享。能够让用户轻松的找到自己喜欢去的地方。并且能够在这里找到一群志同道合的朋友，陪你一起去经历人生的美好。</p>
				 		</div>
				  	</div>
				</div>
			</div>
			
		
				<div style="overflow: hidden;margin: 0 auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 clearfix" id="c6-1" style="margin: auto;">
						<h1 class="hh1" style="font-size: 36px;padding-bottom: 20px;text-align: center;">很多好书在等着你</h1>
						<p class="p1"  style="font-size: 16px;text-align: center;">读书本来就是一种快乐的享受，有一些人还不懂，而我已经体会到了。</p>
					</div>
				</div>
					<div class="row" style="margin: 50px auto;width: 80%">
						  <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_6.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_10.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_3.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_7.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_5.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_11.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_12.jpg" alt=".shu">
						    </a>
						  </div>
						   <div class="col-xs-6 col-md-3">
						    <a href="#" class="thumbnail">
						      <img src="${pageContext.request.contextPath}/static/desk/img/book_13.jpg" alt=".shu">
						    </a>
						  </div>
					</div>
					
		
			<div class="c7">
				<div class="container">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c7-1" style="margin-bottom: 30px">				     
						<h1 class="hh1" style="font-size: 36px;padding-bottom: 40px;">很多地方随您挑选</h1>	
						<p class="p1"  style="font-size: 18px;color: #a9a9a9;">您可以从众多迷人的景点中挑选出您最喜欢的</p>		
					</div>						
				</div>
				<div class="container">
		 			<div id="single" class="carousel slide" data-ride="carousel" data-shift="1">
		   				<div class="carousel-inner">
		      				<ul class="row item active">
		        				<li class="col-xs-4 one">
		        					<img src="${pageContext.request.contextPath}/static/desk/img/index_1.jpg" class="img-responsive">
		        				</li>
		        				<li class="col-xs-4 two">
		        					<img src="${pageContext.request.contextPath}/static/desk/img/index_2.jpg"  class="img-responsive">
		        				</li>
		        				<li class="col-xs-4 three">
		          					<img src="${pageContext.request.contextPath}/static/desk/img/index_3.jpg"  class="img-responsive">
		        				</li>
		      				</ul>
		      				<ul class="row item">
		        				<li class="col-xs-4 four">
		          					<img src="${pageContext.request.contextPath}/static/desk/img/index_4.jpg"  class="img-responsive">
		        				</li>
		        				<li class="col-xs-4 five">
		          					<img src="${pageContext.request.contextPath}/static/desk/img/index_5.jpg"   class="img-responsive">
		        				</li>
		        				<li class="col-xs-4 six">
		          					<img src="${pageContext.request.contextPath}/static/desk/img/index_6.jpg"  class="img-responsive">
		        				</li>
		      				</ul>
		    			</div>
						<a class="carousel-control left" href="#single" data-slide="prev">
							<span class="glyphicon glyphicon-menu-left"></span>
						</a>
		    			<a class="carousel-control right" href="#single" data-slide="next">
		    				<span class="glyphicon glyphicon-menu-right"></span>
		    			</a>
		  			</div>
				</div>
			</div>
			<div class="c8">
				<div style="overflow: hidden;margin: 0 auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 clearfix" id="c8-1">
						<h1 class="hh1" style="font-size: 36px;padding-bottom: 20px;">始于2017年，相信会越来越好</h1>
						<p class="p1"  style="font-size: 16px;color: #a9a9a9;">众多不知道现在要干嘛的同学，看向这里，让我们要么读书，要么旅行</p>
					</div>
				</div>				
			</div>
			
			<div class="c11">
				<div class="container" style="overflow: hidden;margin: 0 auto;padding-bottom: 50px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 36px;">名句赏析</h1>	
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
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/p1-26 (2).png"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">记得，要做最后出牌的人，出让别人觉得出其不意的牌，在他们以为你要输掉的时候，这样，你才能赢得牌局。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242;"></p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/p1-26 (3).png"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">有时候读书是一种巧妙地避开思考的方法。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242">——赫尔普斯</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="${pageContext.request.contextPath}/static/desk/img/p1-26 (1).png"/></div>
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
			</div><!--c11客户反馈-->
			
		</div>
		<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>
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
	
</html>