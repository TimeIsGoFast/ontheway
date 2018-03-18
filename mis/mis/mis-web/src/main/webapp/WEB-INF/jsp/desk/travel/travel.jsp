<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/example.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/footer&cbl.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/desk/css/daohang.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/jquery-1.11.3.js" ></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/travel.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/templet.js" ></script>
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
							<li><a href="index.html">首页</a></li>
							<li><a href="book.html">爱读书</a></li>
							<li><a href="travel.html">去旅行</a></li>
							<li><a href="travel.html">小贴士</a></li>
							<li class="wd1"><a href="">热门</a>
								<ul class="wd2 clearfix">
									<li class="pull-left " style="width: 233px;">
										<p><a href="#" class="a1">热门图书</a></p>
										<ul class="ul1"> 
											<li><a href="#" title="第一夜">第一夜</a></li>
											<li><a href="#" title="追风筝的人">追风筝的人</a></li>
											<li><a href="#" title="偷影子的人">偷影子的人</a></li>
											<li><a href="#" title="百夜行">白夜行</a></li>
										</ul>		
									</li>
									<li class="pull-left clearfix" style="width: 219px;">
										<p><a href="#" class="a1">热门旅行</a></p>
										<ul class="ul1"> 
											<li><a href="#" title="埃及金字塔">埃及金字塔</a></li>
											<li><a href="#" title="英国巨石阵">英国巨石阵</a></li>
											<li><a href="#" title="上海迪士尼">上海迪士尼</a></li>
											<li><a href="#" title="宁波方特">宁波方特</a></li>
										</ul>										
									</li>
									<li class="pull-left clearfix" style="width: 479px;">
										<p><a href="#" class="a1">小贴士</a></p>
										<ul class="ul1">
											<li><a href="#" title="夏季旅行该准备什么">夏季旅行该准备什么</a></li>
											<li><a href="#" title="去海滩如何防止晒伤">去海滩如何防止晒伤</a></li>
											<li><a href="#" title=""></a></li>
											<li><a href="#" title=""></a></li>
										</ul>										
									</li>
								</ul>
							</li>
							
								
						</ul>
						<ul class="zcdl nav navbar-nav pull-right">
							<li><a href="login.html">登录</a></li>
							<li><a href="register.html">注册</a></li>
						</ul>
					</div>					
				</div>
			
			</nav>
		</header>
		<div class="main">
			<div class="e1">
				<div class="e1-1">
					<div class="e1-1-1 ">
						<div class="e1-1-1a container">
							<img src="${pageContext.request.contextPath}/static/desk/img/p4-2.png" class="img-responsive" width="234" height="56"/><br />
							<span>起飞页是当今最领先的响应式自助建站平台，流线式网页布局设计方案，可视化图文内容编辑模式，它让网站制作和维护成为一件轻松惬意的事。无论是普通互联网用户还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。</span>	
							<br><a>现在注册</a>
						</div>
					</div>
			    </div>
			    <div class="e1-2">
			    	<div class="e1-2-1">
						<div class="e1-2-1a container">
							<span>你好，世界！</span>	
							<br>
							<p>很多人迈出了第一步后，赢得了世界的怀抱！</p>
							<p>也许，您也可以和他们一样！</p>
						</div>
					</div>
			    </div>
			</div>
			<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">热门的旅游地点推荐</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<div class="col-lg-12">
				  <div class="row">
					  <div class="col-sm-6 col-md-4">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/static/desk/img/travel/t1.png" alt="碎片大厦">
					      <div class="caption">
					        <h3>Thumbnail label</h3>
					       
					    
					      </div>
					    </div>
					  </div>
				
					
					  <div class="col-sm-6 col-md-4">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/static/desk/img/travel/t7.jpg" alt="碎片大厦">
					      <div class="caption">
					        <h3>Thumbnail label</h3>
					     
					     
					      </div>
					    </div>
					  </div>
				
					  <div class="col-sm-6 col-md-4">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/static/desk/img/travel/t3.png" alt="碎片大厦">
					      <div class="caption">
					        <h3>Thumbnail label</h3>
					       
					      </div>
					    </div>
					  </div>
					   <div class="col-sm-6 col-md-4">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/static/desk/img/travel/t4.jpg" alt="碎片大厦">
					      <div class="caption">
					        <h3>Thumbnail label</h3>
					      
					      </div>
					    </div>
					  </div>
					   <div class="col-sm-6 col-md-4">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/static/desk/img/travel/t5.jpg" alt="碎片大厦">
					      <div class="caption">
					        <h3>Thumbnail label</h3>
					    
					      </div>
					    </div>
					  </div>
					 
					</div>
			
				</div>
				
				
            </div>
			<div style="width:50px;height:50px;"></div>
            <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">跟我去旅行</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/static/desk/img/book/book3.jpg">
				      </div>
				      <div class="col-lg-10 ">
				        <p class="p1">读完你再也不用认命了</p>
				        <p class="p2">黑色火 评论 《当机立断》</p>
						<p class="p3">
							最近我身边发生了三件事，当事人都惆怅烦闷彻夜无眠。第一件事是表妹相亲碰到了个帅哥，可是家庭条件并不理想；第二件事是哥嫂意外怀孕，对二胎不能取舍；第三件事是哥们工作乏味但薪水还行，该不该跳槽？

							为了给大家一点建议，我开始求助书籍，直到碰到了《当机立断》这本书，满天的云彩终于散了。《当机立断》介绍了以事实为依据、以逻辑为准绳的思考工具，为我们在选择时提供了一个犀利的武器</p>
				      </div>
				   </div>

				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
				 <div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/static/desk/img/book/book5.jpg">
				      </div>
				      <div class="col-lg-10 ">
				        <p class="p1">读完你再也不用认命了</p>
				        <p class="p2">黑色火 评论 《当机立断》</p>
						<p class="p3">
							最近我身边发生了三件事，当事人都惆怅烦闷彻夜无眠。第一件事是表妹相亲碰到了个帅哥，可是家庭条件并不理想；第二件事是哥嫂意外怀孕，对二胎不能取舍；第三件事是哥们工作乏味但薪水还行，该不该跳槽？

							为了给大家一点建议，我开始求助书籍，直到碰到了《当机立断》这本书，满天的云彩终于散了。《当机立断》介绍了以事实为依据、以逻辑为准绳的思考工具，为我们在选择时提供了一个犀利的武器</p>
				      </div>
				   </div>

				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
				 <div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/static/desk/img/book/book6.jpg">
				      </div>
				      <div class="col-lg-10 ">
				        <p class="p1">读完你再也不用认命了</p>
				        <p class="p2">黑色火 评论 《当机立断》</p>
						<p class="p3">
							最近我身边发生了三件事，当事人都惆怅烦闷彻夜无眠。第一件事是表妹相亲碰到了个帅哥，可是家庭条件并不理想；第二件事是哥嫂意外怀孕，对二胎不能取舍；第三件事是哥们工作乏味但薪水还行，该不该跳槽？

							为了给大家一点建议，我开始求助书籍，直到碰到了《当机立断》这本书，满天的云彩终于散了。《当机立断》介绍了以事实为依据、以逻辑为准绳的思考工具，为我们在选择时提供了一个犀利的武器</p>
				      </div>
				   </div>

				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
            </div>


          <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">温馨小贴士</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
		</div>

		 <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">旅行方式</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
		</div>

		 <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">一起去旅行</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
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
</html>
