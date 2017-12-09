<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/frozen/css/frozen.css">

<script src="${pageContext.request.contextPath}/static/frozen/lib/zepto.min.js"></script>
<script src="${pageContext.request.contextPath}/static/frozen/js/frozen.js"></script>
<%-- <script src="${pageContext.request.contextPath}/static/jquery-easyui-1.4.4/jquery.min.js"></script> --%>

</head>
<body ontouchstart>
        <header class="ui-header ui-header-positive ui-border-b">
            <i class="ui-icon-return" onclick="history.back()"></i><h1>个人信息</h1><button class="ui-btn">回首页</button>
        </header>
<!--         <footer class="ui-footer ui-footer-btn"> -->
<!--             <ul class="ui-tiled ui-border-t"> -->
<!--                 <li data-href="index.html" class="ui-border-r"><div>基础样式</div></li> -->
<!--                 <li data-href="ui.html" class="ui-border-r"><div>UI组件</div></li> -->
<!--                 <li data-href="js.html"><div>JS插件</div></li> -->
<!--             </ul> -->
<!--         </footer> -->
        <section class="ui-container">




<section id="tab">
	<div class="demo-item">
<!-- 		<p class="demo-desc">标签栏</p> -->
		<div class="demo-block">
			<div class="ui-tab">
			    <ul class="ui-tab-nav ui-border-b">
			        <li class="current">个人信息填写</li>
			        <li>个人信息查询</li>
			        <li>考勤查询</li>
			    </ul>
			    <ul class="ui-tab-content" style="width:100%">
			        <li>
			        	<!-- 个人信息查询 -->
			        
			        		<div class="demo-item">
        							<div class="demo-block">
            							<div class="ui-form ui-border-t">
                							<form id="userForm" action="#">
                    							<div class="ui-form-item ui-border-b">
                        							<label>
                            							学号
                        							</label>
                        							<input type="text" id = "cnumber" placeholder="请输入学号" name="cnumber" />
                        							<a href="#" id="clearCn" class="ui-icon-close">
                        							</a>
                   						 		</div>
                    							<div class="ui-form-item ui-border-b">
                        							<label>
                            							姓名
                        							</label>
                        							<input type="text" id = "cname" placeholder="姓名" name="cname" />
                        							<a href="#" id="clearNa" class="ui-icon-close">
                        							</a>
                    							</div>
                    							<div class="ui-form-item ui-border-b">
                        							<label>
                            							班级
                        							</label>
                        							<input type="text" id = "projectClass" placeholder="请输入班级" name="projectClass" />
                        							<a href="#" id="clearPr" class="ui-icon-close">
                        							</a>
                   						 		</div>
                    							<div class="ui-form-item ui-border-b">
                        							<label>
                            							手机号码
                        							</label>
                        							<input type="text" id = "phone" placeholder="请输入手机号码" name="phone" />
                        							<a href="#" id="clearPh" class="ui-icon-close">
                        							</a>
                   						 		</div>           
                   								<div class="ui-form-item ui-border-b">
                        							<label>
                            							QQ号码
                        							</label>
                        							<input type="text" id = "qnumber" placeholder="QQ号" name="qnumber" />
                        							<a href="#" id="clearQn" class="ui-icon-close">
                        							</a>
                   						 		</div>
                   						 		<input type="hidden" id = "openId" placeholder="openId" name="openId" value="<%=request.getAttribute("openId")%>"/>
                							</form>
            							</div>
       								</div>
       								<div class="demo-block"> 
            							<div class="ui-btn-wrap">
                							<button class="ui-btn-lg ui-btn-primary" id="sure">
                    							确定
                							</button>
            							</div>
            						<div class="ui-btn-wrap" id="cancel">
                						<button class="ui-btn-lg">
                    							取消
                						</button>
            						</div>
        						</div>
    						</div>
			        	
			        </li>
			        
			        
			        <li>内容2</li>
			        <li>内容3</li>
			    </ul>
			</div>
		</div>
		<script class="demo-script">
		(function (){
            var tab = new fz.Scroll('.ui-tab', {
		        role: 'tab',
		        autoplay: false,
		        interval: 3000
		    });
		    /* 滑动开始前 */
		    tab.on('beforeScrollStart', function(fromIndex, toIndex) {
		        console.log(fromIndex,toIndex);// from 为当前页，to 为下一页
		    })
		})();
		
		$('#sure').click(function(){
			var params = $('#userForm').serializeArray();
			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/anon/saveWeChatClientInfo.do',
				data : params,
				async :false,
				success : function(data){
					if(data==1){
						alert('成功');
					}
				},
				error : function(e){
					alert('出错');
				}
			})
		})
		
		
        </script>
	</div>
</section>
	
        </section><!-- /.ui-container-->
        <script>
        $('.ui-footer,.ui-tiled').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
        $('.ui-header .ui-btn').click(function(){
            location.href= '${pageContext.request.contextPath}/index.do';
        });
        </script>
        <script>
        	$('#clearCn').click(function(){
        		$('#cnumber').val('');
        	});
			$('#clearNa').click(function(){
				$('#cname').val('');
        	});
        	$('#clearPr').click(function(){
        		$('#projectClass').val('');
        	});
			$('#clearPh').click(function(){
				$('#phone').val('')
        	});
			$('#clearQn').click(function(){
				$('#qnumber').val('');
        	});
        </script>
    </body>
</html>