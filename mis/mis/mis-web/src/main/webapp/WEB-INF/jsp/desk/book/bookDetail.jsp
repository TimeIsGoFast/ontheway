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
						 <img src="${pageContext.request.contextPath}/output/${comment.remark}" style="display:block;width:102px;margin:auto;">
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
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
		
	</div>
	</body>	
	<script>
	var path='${pageContext.request.contextPath}';
	</script>
</html>
