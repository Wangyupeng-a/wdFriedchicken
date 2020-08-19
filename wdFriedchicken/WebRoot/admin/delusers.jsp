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
	List<Users> listuser = new ArrayList<Users>();
	listuser = (List<Users>) request.getAttribute("listuser");
%>
<body>
	<center>
		<div class="tablezhong">
			<table border="1">
				<tr>
					<th colspan="8" style="height: 50px;">所有用户</th>
				</tr>
				<tr>
					<td>用户名</td>
					<td>密码</td>
					<td>性别</td>
					<td>年龄</td>
					<td>积分</td>
					<td>电话</td>
					<td>身份</td>
					<td>操作</td>
				</tr>
				<%
					for (int i = 0; i < listuser.size(); i++) {
				%>
				<tr>
					<td><%=listuser.get(i).getUsername()%></td>
					<td><%=listuser.get(i).getUserpwd()%></td>
					<td><%=listuser.get(i).getUsersex()%></td>
					<td><%=listuser.get(i).getUserage()%></td>
					<td><%=listuser.get(i).getUserjf()%></td>
					<td><%=listuser.get(i).getUsertel()%></td>
					<td>
						<%
							if (listuser.get(i).getUserqx() == 1) {
						%> 管理员 <%
							} else {
						%>普通会员<%
							}
						%>
					</td>
					<td>
						<%
							if (listuser.get(i).getUserjf() == 100) {
						%> <a
						href="servlet/DeluserServlet?userid=<%=listuser.get(i).getUserid()%>">删除</a>
						<%
							} else if (listuser.get(i).getUserjf() == 0) {
						%> 无权删除<%
							} else {
						%><a
						href="servlet/DeluserServlet?userid=<%=listuser.get(i).getUserid()%>">删除</a>
						<%
							}
						%>
					</td>
				</tr>
				<%
					}
				%>

			</table>
			<br> <font color="red">${massage}</font> <br> <br>
		</div>
	</center>
</body>
</html>
