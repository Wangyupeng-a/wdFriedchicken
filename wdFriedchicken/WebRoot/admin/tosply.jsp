<%@ page language="java" import="java.util.*,javabean.Ly" pageEncoding="utf-8"%>
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
	List<Ly> listsply = new ArrayList<Ly>();
	listsply = (List<Ly>)request.getAttribute("listsply");
 %>
<body>
	<center>
		<div class="tablezhong">
			<form action="servlet/SpinputServlet" method="post">
				<table border="1">
				<tr>
						<th colspan="7" style="height: 50px;">用户对商品的评价</th>
					</tr>
				<tr>
					<td>时间</td>
					<td>用户名</td>
					<td>商品名</td>
					<td>商品图片</td>
					<td>商品种类</td>
					<td>留言内容</td>
					<td>操作</td>
				</tr>
				<%for(int i = 0;i<listsply.size();i++) {%>
					<tr>
						<td><%=listsply.get(i).getLytime()%></td>
						<td><%=listsply.get(i).getUser().getUsername()%></td>
						<td><%=listsply.get(i).getSp().getSpname()%></td>
						<td><img alt="" src="<%=listsply.get(i).getSp().spimg%>" style="width: 60%;"/></td>
						<td><%=listsply.get(i).getSp().getSpzhonglei()%></td>
						<td><%=listsply.get(i).getLyneirong()%></td>
						<td>
						<a href="servlet/AdmindellyServlet?lyid=<%=listsply.get(i).getLyid() %>">删除</a>
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
