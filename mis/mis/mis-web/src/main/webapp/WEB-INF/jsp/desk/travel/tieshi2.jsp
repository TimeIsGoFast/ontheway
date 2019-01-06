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
			    <h1 class="hh1" style="font-size: 25px;">去海边被晒伤了怎么办?</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
	  			<p style="line-height:40px;font-size:15px;">对于不同程度晒伤，有不同的方法.通常在日晒后第二天皮肤红斑反应达到高峰，经一周左右红斑消褪。 
								<br>1／对于轻微的晒伤： 
								在日晒后，皮肤会处于一个较高的温度，这时候不妨尝试冷敷皮肤，用湿的冷毛巾大约半小时敷一次，持续四到五个小时。或进行冷水浴，然后再涂上滋润保湿且有舒缓效果的韵姿晒后舒缓滋润霜，它能马上补充肌肤水分，降红降敏，令火辣发红的肌肤得到镇静及舒缓。另外日晒会吸走人体内的大量水分，身体容易出现脱水现象，所以此时应该喝大量的水来补充失去的水分，也能缓和日晒后的痛苦，不至于肌肤过于脱水。在此期间切勿化妆。 
								<br>2／对于中度的晒伤： 
								除了以上的处理方法以外，还可以涂上芦荟汁液于晒伤部位，芦荟有立即降热、清凉的功效。也可以尽快服用阿司匹林，这种消炎药可以减轻皮肤肿胀的情形并且帮助缓和疼痛。 
								<br>3／对于严重的晒伤：如果你的晒伤情形出现疼痛、肿胀、起水泡，甚至在暴晒后十二个小时内出现了发烧、发冷、头昏眼花、反胃等症状，就要尽快去找医生了。 
								<br>4／以下是某个论坛的MM们给的晒伤补救方法。 
								冰冻的西瓜汁，黄瓜汁，或是草莓汁都是安抚面膜，芦荟膏也可以。 
								要是担心夏天晒伤，准备雅漾的矿泉喷雾，安抚镇静的效果已经不是一般的赞了！！ 
								你有芦荟吗.把皮片掉,贴上.如果有绿药膏和京万红,抹点,清凉油也行. 
								用酸奶副, 很有效的 
								用青蛙的肚皮敷在晒伤处，有效 
								<br>5／最后附送防晒TIPS 
								在防晒时，要注意下面的小诀窍： 
								涂防晒品时，千万不要忽略了脖子、下巴、耳朵这些地方，小心造成肤色不均，变成花脸。 
								你的樱唇也需要细心呵护，白天的高温使唇部的水分蒸发得很快，更容易受到阳光的伤害。涂上具有防晒和保湿双重功效的护唇膏吧。 
								即使做好了防晒措施，但如果阳光很厉害的话，夜里最好还是使用晒后护理品。 
								汗水会把防晒品冲掉的，应该每隔几个小时再涂一遍。 
								每年最好更换新的防晒品，并注意储存在阴凉的地方。 
								避免在上午11时到下午3时受到阳光的暴晒，因为这段时间的紫外线最强，杀伤力也最大。 
								日晒出汗后，要彻底洗净身上的盐分，再用沾有化妆水的棉花在肩部、面部或背部等发烫的部位轻拍并冷敷大约半小时，帮助收缩和保养皮肤，缓解日晒的伤害。 
								有条件时可用喷雾式的矿泉水在距离面部15cm处均匀喷洒，随时补充肌肤水分，</p>
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
