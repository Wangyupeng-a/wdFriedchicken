<%@ page language="java" import="java.util.*,javabean.*"
	pageEncoding="utf-8"%>
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
	margin-bottom: 150px;
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
<%
	List<Shopcar> listcar = new ArrayList<Shopcar>();
	listcar = (List<Shopcar>) request.getAttribute("listcar");
	int num = 0;
%>
<body>
	<center>
		<div class="tablezhong">
			<form action="" method="post">
				<table border="1">
					<tr>
						<th colspan="8" style="height: 50px;">成交记录</th>
					</tr>
					<tr>
						<td>成交时间</td>
						<td>购买用户</td>
						<td>商品图片</td>
						<td>商品名</td>
						<td>商品介绍</td>
						<td>商品价格</td>
						<td>成交数量</td>
						<td>商品总价</td>
					</tr>
					<%
						for (int i = 0; i < listcar.size(); i++) {
							num = num + listcar.get(i).getSp().getSpjiage()
									* listcar.get(i).getCarspnumber();
					%>
					<tr>
						<td><%=listcar.get(i).getCartime()%></td>
						<td><%=listcar.get(i).getUser().getUsername()%></td>
						<td><img alt="" src="<%=listcar.get(i).getSp().getSpimg()%>"
							style="width: 60%;" /></td>
						<td><%=listcar.get(i).getSp().getSpname()%></td>
						<td><%=listcar.get(i).getSp().getSpjieshao()%></td>
						<td>￥<%=listcar.get(i).getSp().getSpjiage()%></td>
						<td><%=listcar.get(i).getCarspnumber()%></td>
						<td>￥<%=listcar.get(i).getSp().getSpjiage()
						* listcar.get(i).getCarspnumber()%></td>
					</tr>
					<%
						}
					%>
					<tr>
						<td>总收入</td>
						<td colspan="7">￥<%=num%></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>
