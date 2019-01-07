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
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/book.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/desk/js/templet.js"></script>
		<title></title>
	</head>
	<body>
	<div id="main">
		<%@ include file="/WEB-INF/jsp/common/menu.jsp" %>
		<div class="main">
  			<div class="main2 container" style="margin:30px auto;">
             <form  action="${pageContext.request.contextPath}/perfectInfo/addInfo.do" method="post" enctype="multipart/form-data">
                       <div >
	                         <div class="input">
	       						 <p style="line-height:40px;font-size:20px;">完善信息&nbsp;&nbsp;<b id="message" style="font-size:1em;">${message}</b></p>
	   						 </div>
                              <input type="hidden" name="uid" id="bookId" value="${user.uid}">
                              <div class="form-group">
                                  <label for="exampleInputName2">姓名&nbsp;&nbsp;</label>
                                  <input type="text" name="name" class="form-control" placeholder="" id="name" value="${user.name}">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">手机号&nbsp;&nbsp;</label>
                                  <input type="text" name="tel" class="form-control" placeholder="" id="tel" value="${user.tel}">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">邮箱&nbsp;&nbsp;</label>
                                  <input type="text" name="mail" class="form-control" placeholder="" id="mail" value="${user.mail}">
                              </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail2">性别&nbsp;&nbsp;</label>
                                  <c:choose>
									    <c:when test="${user.sex eq '1'}">
									      <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex1" checked value="1"> 男
		    								</label>
		    								 <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex2"  value="0"> 女
		    								</label>
									    </c:when>
									    <c:when test="${user.sex eq '0'}">
									         <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex1" value="1"> 男
		    								</label>
		    								 <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex2" checked  value="0"> 女
		    								</label>
									    </c:when>
									  
									    <c:otherwise>
									       <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex1"  value="1"> 男
		    								</label>
		    								 <label class="radio-inline">
		       								 <input type="radio" name="sex" id="sex2"  value="0"> 女
		    								</label>
									    </c:otherwise>
									</c:choose>
                                   
                              </div>
                                <div class="control-group js_uploadBox">
							    <div class="input">
							        <span style="font-size: 1.3em">头像上传</span>
							        <div style="margin:20px 0px;">
							            <input type="file" class="js_upFile" name="imgfile" placeholder="" id="imgfile">
							
							        </div>
							    </div>
							
							    <div class="input">
							        <span>预&nbsp;&nbsp;&nbsp;&nbsp;览</span>
							        <div style="margin:30px;width:150px;height:150px;">
							
							            <div class="js_showBox "><img id="_img" class="js_logoBox" src="${pageContext.request.contextPath }/output/${user.picUrl}" width="100px" ></div>
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
