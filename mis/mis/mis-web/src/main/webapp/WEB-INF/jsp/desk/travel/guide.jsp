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
  			<div class="main2 container" style="margin:30px auto;">
             <form  action="${pageContext.request.contextPath}/deskTravel/addGuide.do" method="post" enctype="multipart/form-data">
                       <div >
                        	 <div class="input">
	       						 <p style="line-height:40px;font-size:20px;">旅行游记&nbsp;&nbsp;<b id="message" style="font-size:1em;">${message}</b></p>
	   						 </div>
                              <div class="form-group">
                                  <label for="exampleInputName2">主题&nbsp;&nbsp;</label>
                                  <input type="text" name="topic" class="form-control" placeholder="" id="topic" value="${user.name}">
                              </div>
                              <br>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">行程安排&nbsp;&nbsp;</label>
                                   <textarea class="form-control" name="datePlan" rows="5"></textarea>
                              </div>
                              <br>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">正文&nbsp;&nbsp;</label>
                                   <textarea class="form-control" name="content" rows="10"></textarea>
                              </div>
                               <br>
                                <div class="control-group js_uploadBox">
							    <div class="input">
							        <span style="font-size: 1.3em">图片(目前只支持上传一张照片)</span>
							        <div style="margin:20px 0px;">
							            <input type="file" class="js_upFile" name="imgfile" placeholder="" id="imgfile">
							
							        </div>
							    </div>
							       </div>  
                              <div style="float:right;margin-right:30px;">
		                       <button type="submit" class="btn btn-primary" id="travelAddOrUpdate"> 确认提交</button>
		                       </div>
                        </div>
     
                      
                       </form>
		   </div>
       </div>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
		
	</div>
	</body>	
	<script>
	var path='${pageContext.request.contextPath}';
	</script>
</html>
