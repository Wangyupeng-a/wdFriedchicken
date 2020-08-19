<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.tablezhong {
	margin-top: 150px;
	margin-right: 150px;
}

table {
	border-collapse: collapse;
}

td {
	text-align: center;
	height: 50px;
	width: 120px;
	height: 50px;
}
</style>
</head>

<body>
	<center>
		<div class="tablezhong">
			<form action="servlet/SpinputServlet" method="post">
				<table border="1">
					<tr>
						<th colspan="2" style="height: 50px;">添加商品</th>
					</tr>
					<tr>
						<td>商品名：</td>
						<td><input type="text" name="spname" /></td>
					</tr>
					<tr>
						<td>商品图片：</td>
						<td style="azimuth: "><input type="file" name="spimg" /></td>
					</tr>
					<tr>
						<td>商品介绍：</td>
						<td><input type="text" name="spjieshao" /></td>
					</tr>
					<tr>
						<td>商品价格：</td>
						<td><input type="text" name="spjiage" /></td>
					</tr>
					<tr>
						<td>商品种类：</td>
						<td><input type="text" name="spzhonglei" /></td>
					</tr>
				</table>
				<br> <font color="red">${massage}</font> <br> <br> <input
					type="submit" value="添加" />
			</form>
		</div>

	</center>
</body>
</html>
