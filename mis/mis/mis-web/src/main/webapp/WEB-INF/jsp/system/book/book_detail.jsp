<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/static/assets/css/select2.min.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/static/assets/css/checkbox3.min.css" rel="stylesheet" >
<title>图书详情</title>
</head>
  <div class="header"> 
         <h1 class="page-header">
         
         </h1>
    
  </div>
   <div class="row">
           <div class="col-xs-12">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <div class="card-title">
                           <div class="title">图书详情</div>
                       </div>
                   </div>
                   <div class="panel-body">
                       
                       <div class="form-inline">
                              <input type="hidden" value="${Book.id }">
                              <div class="form-group">
                                  <label for="exampleInputName2">书名&nbsp;&nbsp;</label>
                                  <input type="text" class="form-control" id="exampleInputName2" placeholder="" value="${Book.bookName}">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">&nbsp;&nbsp;&nbsp;&nbsp;作者&nbsp;&nbsp;</label>
                                  <input type="email" class="form-control" id="exampleInputEmail2" placeholder="" value="${Book.author }">
                              </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail2">&nbsp;&nbsp;&nbsp;&nbsp;出版社&nbsp;&nbsp;</label>
                                  <input type="email" class="form-control" id="exampleInputEmail2" placeholder="" value="${Book.publics}">
                              </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail2">&nbsp;&nbsp;&nbsp;&nbsp;价格&nbsp;&nbsp;</label>
                                  <input type="email" class="form-control" id="exampleInputEmail2" placeholder="￥" value="${Book.price }">
                              </div>
                             
                        </div>
                        <br>
                        <div class="form-inline">
                              <div class="form-group">
                                  <label for="exampleInputName2">类型&nbsp;&nbsp;</label>
                                  <input type="text" class="form-control" id="exampleInputName2" placeholder="" value="${Book.bookType}">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail2">&nbsp;&nbsp;&nbsp;&nbsp;出版日期&nbsp;&nbsp;</label>
                                  <input type="text" class="form-control" id="exampleInputEmail2" placeholder="" value="${ Book.publicDate}">
                              </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail2">&nbsp;&nbsp;&nbsp;&nbsp;热门程度&nbsp;&nbsp;</label>
                                    <input type="hidden" id="gradeSelectHidden" value="${Book.grade}">
                           				<select id="gradeSelect" class="selectbox" style="color:green" >
                                   		  <option value="1">等级一</option>
                                  	      <option value="2">等级二</option>
                                  	      <option value="3">等级三</option>
                                  	      <option value="4">等级四</option>
                                  	      <option value="5">等级五</option>
                          				</select>
                               </div>
                               
                             
                        </div>
                        
                       <div class="sub-title">简介</div>
                       <div>
                           <textarea class="form-control" rows="3">${Book.descr}</textarea>
                       </div>
                        <br>
                       <div style="float:right;margin-right:30px;">
                       <a href="#" class="btn btn-primary">修改</a>
                       </div>
                   </div>
               </div>
           </div>
       </div>
         <div class="row">
             <div class="col-xs-12">					
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <div class="card-title">
                             <div class="title">封面上传</div>
                         </div>
                     </div>
                     <div class="panel-body">
                         <form >
                             <div class="form-group">
                             <input type="file" id="exampleInputFile">
                             <p class="help-block">支持jpg、png等格式上传</p>
                     </div>
                         </form>
                     </div>
                 </div>
             </div>
        </div>

    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.metisMenu.js"></script>
	<script src="${pageContext.request.contextPath}/static/assets/js/select2.full.min.js"></script>
	<script type="text/javascript">

	</script>
      <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/static/js/book-detail.js"></script> 
    <script src="${pageContext.request.contextPath}/static/assets/js/custom-scripts.js"></script> 
	
</html>