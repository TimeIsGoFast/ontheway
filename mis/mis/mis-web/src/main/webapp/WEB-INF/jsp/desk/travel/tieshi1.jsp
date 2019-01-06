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
			<div class="main2 container" style="margin:30px auto;">
			    <div class="col-lg-12">
			    <h1 class="hh1" style="font-size: 25px;">去西藏旅行该准备什么</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
	  			<p style="line-height:40px;font-size:15px;">1.背包：在够用的前提下,在西藏旅行携带的行李背包越少越好。一般45升以下的背包就足以应付,如果参与一些野外徒步野营活动的,那么一大一小两个背包也就足够。
	  			<br>2.服装：因为西藏气温很低,昼夜温差很大,所以羽绒服和保暖的绒衣必不可少。
				　　如果去西藏徒步或登山,应该准备一套排汗内衣。在野外,有汗粘在身上是很麻烦的,而且它会迅速带走身上的热量,十分危险。另外要特别注意,西藏的七、八月,几乎天天要下雨,这就要求全身的装备都应具备防水性质。
				　　<br>3.睡袋：七、八月份带一个1千克的鸭绒睡袋就足够温暖的了。要买80%以上绒的,压缩后体积比大瓶可乐大不了多少。
				　　<br>4.鞋：首选登山鞋，去旅行当然需要一双好鞋,尤其是在西藏,最佳选择是硬底高帮的登山鞋,不容易进沙石,过泥泞地不易脱落,隔水和保暖也比较好。同时建议带一双拖鞋,在浴室里用。
				　<br>5.太阳镜：不仅仅是酷，强烈的紫外线和冰雪反射都容易损伤眼睛,所以一副好的太阳镜十分必要。
				　　<br>6.防晒霜：避免脱皮必用，高原空气稀薄,太阳直射。防晒霜可以避免被晒得脱皮。
				　　<br>7.旅行水壶：生命之源，西藏的水很纯净,有的可以直接饮用。高原上往往几十公里无人烟,经常有上顿没下顿,所以随身带个水壶很有用。
				　　<br>8.地图指南针：万一迷路,它能指引前进方向。
				　　<br>9.罐装氧气：标准配置，高原反应的基本成因就是缺氧,还是带上两罐保险。
				　　<br>10.药品：一样也别落下，外伤用的云南白药、正红花油、创可贴、红药水;喉咙用的草珊瑚含片;清热消炎的板蓝根冲剂;消炎的头咆、氧氟沙星;胃肠药氟哌酸、藿香正气水、泻痢停、黄连素以及感冒药、头痛药等。对于有高原反应抑制需要提前服用红景天，以降低气压差对人的影响。
	  			</p>
	  			</div>
	  		</div>
	  		
  			<div class="main2 container" style="margin:30px auto;">
  		
				
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
