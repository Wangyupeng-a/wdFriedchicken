<%@ page language="java" import="java.util.*,javabean.Sp" pageEncoding="utf-8"%>
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
	text-align: center; height : 50px;
	width: 120px;
	height: 50px;
}
</style>
</head>
<%
	List<Sp> list = new ArrayList<Sp>();
	list = (List<Sp>)request.getAttribute("splist");
 %>
<body>
	<center>
		<div class="tablezhong">
			<form action="servlet/SpinputServlet" method="post">
				<table border="1">
				<tr>
						<th colspan="6" style="height: 50px;">所有商品</th>
					</tr>
				<tr>
					<td>商品名</td>
					<td>商品介绍</td>
					<td>商品价格</td>
					<td>商品种类</td>
					<td>商品图片</td>
					<td>操作</td>
				</tr>
				<%for(int i = 0;i<list.size();i++) {%>
					<tr>
						<td><%=list.get(i).getSpname()%></td>
						<td><%=list.get(i).getSpjieshao()%></td>
						<td>￥<%=list.get(i).getSpjiage()%></td>
						<td><%=list.get(i).getSpzhonglei()%></td>
						<td><img alt="" src="<%=list.get(i).getSpimg()%>" style="width: 80%;"/></td>
						<td>
						<a href="servlet/AdminqueryonespServlet?spid=<%=list.get(i).getSpid() %>">修改</a>
						<a href="servlet/AdmindelspServlet?spid=<%=list.get(i).getSpid() %>">删除</a>
						</td>
					</tr>
					<%} %>
				</table>
				<br> <font color="red">${massage}</font> <br> <br>
			</form>
		</div>
	</center>
</body>
</html>
