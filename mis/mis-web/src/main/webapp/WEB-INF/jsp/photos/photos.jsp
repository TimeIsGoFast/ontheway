<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>photo</title>
<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/jquery-qrcode-master/src/jquery.qrcode.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/jquery-qrcode-master/src/qrcode.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/jquery-qrcode-master/jquery.qrcode.min.js"></script>
</head>
<body>
<div id="qrcode"> </div>
<script>
jQuery('#qrcode').qrcode("http://146e0z5196.51mypc.cn/mis-web/anon/doBusiness.do?code=");
</script>
</body>
</html>