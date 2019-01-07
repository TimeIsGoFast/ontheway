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
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
		<div class="main">
	
          <div class="main2 container border" style="margin:30px auto;">
             <div class="col-lg-12 ">
					<div class="col-lg-3 ">
					 <img src="${pageContext.request.contextPath}/output/${travel.picUrl}" style="display: block;width: 200px;margin:30px auto;">
					</div>
					<div class="col-lg-9  " style="line-height:24px;">
					    <p class="book_detail_book_name">${travel.touristName}</p>
					    <p>所在城市：	${travel.city}</p>
					    <p>具体位置：	${travel.adress}</p>
						<p>平均消费：	${travel.price}/人</p>
						<p>简  介：	${travel.remark}</p>
						
						
					</div>
				</div>
			</div>
			  <div class="main2 container" >
	            <div class="container" style="overflow: hidden;margin: 30px auto;">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="c11-1">
							<h1 class="hh1" style="font-size: 20px;">想说的话</h1>	
							
						</div>						
				</div>
				<div style="border:1px solid #ccc;padding: 30px;border-radius: 5px;height: 250px">
				<div class="form-group" >
    				 <input type="hidden" value="${travel.id }" id="bookId"/>
   					 <textarea class="form-control" rows="5" placeholder="请输入" id="bookComment"></textarea>
                 
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
	$(function(){
	   	$("#bookCommnetBtn").on('click',function(){
	   		var bookId = $("#bookId").val();
	   		var comment = $("#bookComment").val();
	   		if(comment==""){
	   			alert("请输入内容");
	   		}
	   		$.ajax({
	   			type:'post',
	   			url:path+'/deskTravel/addTravelComment.do',
	   			data:{'travelId':bookId,'comment':comment},
	   			dataType:'json',
	   			success:function(data){
	   				if(data.code==1){
	   					window.location.reload();
	   				}else{
	   					alert("保存失败");
	   				}
	   			}
	   		});
	   		
	   	});
		
	   	//赞一下
	   	$(".zanyixia").on('click',function(){
	   		var pariseNum = $(this).attr("data-cid");
	   		var number = parseInt(pariseNum)+1;
	   		var commentId = $(this).attr("data-id");
	   		$.ajax({
	   			type:'post',
	   			url:path+'/deskTravel/zanyixa.do',
	   			data:{'number':number,'commentId':commentId},
	   			dataType:'json',
	   			success:function(data){
	   				if(data.code==1){
	   					window.location.reload();
	   				}else{
	   					alert("点赞失败");
	   				}
	   			}
	   		});
	   	});
	})
	</script>
</html>
