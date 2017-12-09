<!DOCTYPE html>
<%@page pageEncoding="utf-8"%>
<html>
<head>
<title>会议签到</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/jquery.mobile-1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="${pageContext.request.contextPath}/static/jquery-easyui-1.4.4/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/jquery.mobile-1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="page" id="container" data-theme="c">
		<form>
		<div>
			openid:<input type="text" value="<%=request.getAttribute("openId")%>" />
			微信昵称:<input type="text" value="<%=request.getAttribute("nickName")%>" />
			<input type="button" value="签到" onclick="alert('签到成功');" />
		</div>
		</form>
	</div>
</body>
</body>
</html>