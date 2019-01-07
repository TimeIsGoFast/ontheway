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
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
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
	 <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
	</div>
	</body>
</html>
