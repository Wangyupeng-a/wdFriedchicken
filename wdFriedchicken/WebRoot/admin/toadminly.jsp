<%@ page language="java" import="java.util.*,javabean.Adminly" pageEncoding="utf-8"%>
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
	List<Adminly> listadminly = new ArrayList<Adminly>();
	listadminly = (List<Adminly>)request.getAttribute("listadminly");
 %>
<body>
	<center>
		<div class="tablezhong">
			<form action="servlet/SpinputServlet" method="post">
				<table border="1">
				<tr>
						<th colspan="6" style="height: 50px;">用户给我们的留言</th>
					</tr>
				<tr>
					<td>时间</td>
					<td>用户名</td>
					<td>用户电话</td>
					<td>用户邮箱</td>
					<td>留言内容</td>
					<td>操作</td>
				</tr>
				<%for(int i = 0;i<listadminly.size();i++) {%>
					<tr>
						<td><%=listadminly.get(i).getAdminlytime()%></td>
						<td><%=listadminly.get(i).getUser().getUsername()%></td>
						<td><%=listadminly.get(i).getAdminlytel()%></td>
						<td><%=listadminly.get(i).getAdminlyemail()%></td>
						<td><%=listadminly.get(i).getAdminlyneirong()%></td>
						<td>
						<a href="servlet/AdmindeltoadminlyServlet?adminlyid=<%=listadminly.get(i).getAdminlyid() %>">删除</a>
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
