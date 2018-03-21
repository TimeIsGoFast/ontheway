<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt">
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
							<li id="helloname"><a href="#">${current_user.name}</a></li>
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
          <div class="main2 container border">
             <div class="col-lg-12 ">
					<div class="col-lg-3 ">
					 <img src="${pageContext.request.contextPath}/output/${book.picUrl}" style="display: block;width: 200px;margin:30px auto;">
					</div>
					<div class="col-lg-9  " style="line-height:24px;">
					    <p class="book_detail_book_name">${book.bookName}&nbsp;&nbsp;&nbsp;<c:if test="${mybook eq false}"><a href="${pageContext.request.contextPath}/deskBook/addMybook.do?bookId=${book.id}" type="button" class="btn btn-success">添加到我的书架</a></c:if></p>
					    <p>作　者：	${book.author}</p>
					    <p>出版社：	${book.publics}</p>
						<p>出版日：	${book.publicDate}</p>
						<p>简  介：	${book.descr}</p>
						
						
					</div>
				</div>
			</div>
			  <div class="main2 container" >
	            <div class="container" style="overflow: hidden;margin: 30px auto;">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
							<h1 class="hh1" style="font-size: 20px;">添加书评</h1>	
							
						</div>						
				</div>
				<div style="border:1px solid #ccc;padding: 30px;border-radius: 5px;height: 250px">
				<div class="form-group" >
    				 <input type="hidden" value="${book.id }" id="bookId"/>
   					 <textarea class="form-control" rows="5" placeholder="请输入您的评论" id="bookComment"></textarea>
                 
			         <button type="button" class="btn btn-danger" id="bookCommnetBtn" style="margin: 30px; float: right;">提交</button>
			    
 				 </div>
 				 </div>

            </div>
       
				<div class="c11">
           		<div class="container" style="overflow: hidden;margin: 30px auto;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
						<h1 class="hh1" style="font-size: 20px;">评论</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<c:forEach items="${comments}" var="comment">
				<div class="shuping">
				   <div class="col-lg-12 col-md-12">
				      <div class="col-lg-2">
						 <img src="${pageContext.request.contextPath}/output/${book.picUrl}" style="display:block;width:102px;margin:auto;">
				      </div>
				      <div class="col-lg-10 " style="font-size:18px;">
				        <p class="p1" style="font-size:25px;line-height:50px;">${comment.name}</p>
				        <p class="p2">${comment.commentDate}</p>
						<p class="p3" style="font-szie:20px;line-height:40px;">${comment.content}</p>
						<p style="color:green;text-align:right;"><button type="button" class="btn btn-success zanyixia" data-id="${comment.id}" data-cid="${comment.praise}"><i class="glyphicon glyphicon-thumbs-up"></i>&nbsp;&nbsp;<span>${comment.praise}</span></button></p>
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
