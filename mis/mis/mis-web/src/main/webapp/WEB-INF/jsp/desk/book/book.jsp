<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/templet.css"/>
		<link rel="stylesheet" href="css/footer&cbl.css" />
		<link rel="stylesheet" href="css/daohang.css" />
		<script type="text/javascript" src="js/jquery-2.1.1.min.js" ></script>		
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/book.js" ></script>
		<script type="text/javascript" src="js/templet.js"></script>
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
						<a href="#" class="navbar-brand"><img src="img/logo.png"/></a>
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
		  	<div class="main1">
				<div class="container">
					<div class="b1">
						 <div class="col-lg-12" >
						    <div class="input-group col-lg-6" style="margin:auto;">
						      <input type="text" class="form-control" placeholder="输入书名、作者">
						      <span class="input-group-btn">
						        <button class="btn btn-info" type="button"><a class="glyphicon glyphicon-search"></a></button>
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
					  <ul class="book_biaoqian">
					    <li><a href="#">小说</a></li>
					    <li><a href="#">随笔</a></li>
					    <li><a href="#">编程</a></li>
					    <li><a href="#">散文</a></li>
					    <li><a href="#">诗歌</a></li>
					    <li><a href="#">童话</a></li>
					    <li><a href="#">漫画</a></li>
					    <li><a href="#">推理</a></li>
					    <li><a href="#">绘本</a></li>
					    <li><a href="#">青春</a></li>
					    <li><a href="#">科幻</a></li>
					    <li><a href="#">言情</a></li>
					    <li><a href="#">奇幻</a></li>
					    <li><a href="#">武侠</a></li>
					    <li><a href="#">历史</a></li>
					    <li><a href="#">哲学</a></li>
					    <li><a href="#">传记</a></li>
					    <li><a href="#">设计</a></li>
					    <li><a href="#">建筑</a></li>
					    <li><a href="#">电影</a></li>
					    <li><a href="#">管理</a></li>
					    <li><a href="#">音乐</a></li>
					    <li><a href="#">旅行</a></li>
					    <li><a href="#">励志</a></li>
					    <li><a href="#">职场</a></li>
					    <li><a href="#">教育</a></li>
					    <li><a href="#">美食</a></li>
					    <li><a href="#">灵修</a></li>
					    <li><a href="#">健康</a></li>
					    <li><a href="#">家居</a></li>
					    <li><a href="#">互联网</a></li>
					    <li><a href="#">科普</a></li>
					   
					  </ul>
					</div>
					<div class="col-lg-9 border ">
					    <table id="table1">
                           <tr>
								<td>
									<div>
									<a href="#"><img src="img/book/book1.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book2.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book3.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book4.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book5.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>

                           </tr>
                           <tr>
								<td>
									<div>
									<a href="#"><img src="img/book/book6.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book7.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book8.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book9.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>

                           </tr>
					    </table>
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
									<div class="col-md-3"><img src="img/book/book11.jpg"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">记得，要做最后出牌的人，出让别人觉得出其不意的牌，在他们以为你要输掉的时候，这样，你才能赢得牌局。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242;"></p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="img/book/book7.jpg"/></div>
									<div class="col-md-9" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">有时候读书是一种巧妙地避开思考的方法。</p>
										<br />
										<p style="font-size:16px;text-align: right;color:#424242">——赫尔普斯</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div style="overflow: hidden;">
									<div class="col-md-3"><img src="img/book/book9.jpg"/></div>
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
			<div class="col-lg-12">
						    <table id="table2">
                           <tr>
								<td>
									<div>
									<a href="#"><img src="img/book/book1.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book2.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book3.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book4.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book5.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
									<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>

                           </tr>
                           <tr>
								<td>
									<div>
									<a href="#"><img src="img/book/book6.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book7.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book8.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book9.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
								<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>
									<td>
									<div>
									<a href="#"><img src="img/book/book10.jpg"></a>
									  <p><a href="#">刺杀骑士团长</a></p>
									  <p>春上春树</p>
									</div>
								</td>

                           </tr>
					    </table>
			</div>				

			</div> 
			<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 20px;">最受欢迎的书评</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="img/book/book3.jpg">
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
						 <img src="img/book/book5.jpg">
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
						 <img src="img/book/book6.jpg">
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
