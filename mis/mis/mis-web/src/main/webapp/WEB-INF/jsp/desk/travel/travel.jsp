<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							<li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
							<li><a href="${pageContext.request.contextPath}/deskBook/render.do">爱读书</a></li>
							<li><a href="${pageContext.request.contextPath}/deskTravel/render.do">去旅行</a></li>
							<li><a href="${pageContext.request.contextPath}/deskTravel/tieshi1.do">小贴士</a></li>
							<li><a href="${pageContext.request.contextPath}/deskTravel/guideRender.do">游记</a></li>
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
			<div class="e1">
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
				  <c:forEach items="${travels}" var="travel">
				  
					  <div class="col-sm-6 col-md-3">
					  <a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=${travel.id}">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/output/${travel.picUrl}" style="display:block;height:230px;" alt="碎片大厦">
					      <div class="caption">
					       <h3>${travel.touristName}</h3>
					       
					    
					      </div>
					    </div>
					     </a>
					  </div>
					 
				</c:forEach>
					 
					</div>
			
				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
				
            </div>
			<div style="width:50px;height:50px;"></div>
            <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">游记攻略</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
                <div class="col-lg-12">
				  <div class="row">
				  <c:forEach items="${guides}" var="guide">
				  
					  <div class="col-sm-4 col-md-2">
					  <a href="${pageContext.request.contextPath}/deskTravel/guideDetail.do?id=${guide.id}">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/output/${guide.picUrl}" style="display:block;height:130px;" alt="碎片大厦">
					      <div class="caption">
					       <p>${guide.topic}</p>
					       
					    
					      </div>
					    </div>
					     </a>
					  </div>
					 
				</c:forEach>
					 
					</div>
			
				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
				 	
            </div>

		<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">结伴而行</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<div class="col-lg-12">
				  <div class="row">
				  <c:forEach items="${travels}" var="travel">
				  
					  <div class="col-sm-6 col-md-3">
					  <a href="${pageContext.request.contextPath}/deskTravel/travelDetail.do?id=${travel.id}" style="text-decoration: none;">
					    <div class="thumbnail">
					      <img src="${pageContext.request.contextPath}/output/${travel.picUrl}" style="display:block;height:230px;" >
					      <div class="caption" style="text-align:left;text-decoration: none;font-size:16px;">
					       <p>发起人：哈哈哈</p>
					       <p>地点：北京</p>
					       <p>时间：2017-1-30 - 2017-2-3</p>
					       <p>联系方式：1755555555</p>
					      </div>
					    </div>
					     </a>
					  </div>
					 
				</c:forEach>
					 
					</div>
			
				</div>
				 <hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
				
            </div>
		 <div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 30px;">问答解疑</h1>	
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
