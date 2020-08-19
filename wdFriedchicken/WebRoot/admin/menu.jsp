<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <script src="js/jquery.min.js"></script>
	<script>  
        $(function(){
        	 $(".one").siblings('ul').children().hide();
          $(".one").click(function(){
              $obj= $(this).siblings('ul').children();
              if($obj.is(':hidden'))
              {
                  $obj.slideDown('slow');
              }else{
                  $obj.slideUp('slow');
              }
          });
      });
  </script>
<style type="text/css">
	li{
		list-style:none;
	}
	 a:link{
		color:black;
		text-decoration:none;
	}
	a:visited{
		color:black;
	}
	a:hover{
		color:#38D2FB;
		}
		.top{
		margin-top:80px;
		}
	body{
		
		background:url(bk.jpg) repeat;
	}
</style>
  </head>
  
  <body>
   <ul class="top">
     <li><h2  class="one">用户管理</h2>
     	<ul>
     		<li><h3><a href="servlet/AdminqueryuserServlet" target="main">查看用户</a></h3> </li>
     	</ul>
     </li>
     <li  ><h2 class="one">商品管理</h2>
          	<ul>
     		<li><h3><a href="admin/addsp.jsp" target="main">商品录入</a></h3> </li>
     		<li><h3><a href="servlet/AdminqueryallspServlet" target="main">商品修改</a></h3> </li>
     	</ul>
     </li>
     <li ><h2 class="one">订单管理</h2>
     	     	<ul>
     		<li><h3><a href="servlet/Adminqueryshopcarok" target="main">查看成交记录</a></h3></li>
     		
     	</ul>
     </li>
     <li ><h2 class="one">留言管理</h2>
     	     	<ul>
     	     <li><h3><a href="servlet/ToAdminlyallServlet" target="main">查看用户对我们的留言</a></h3></li>
     		<li><h3><a href="servlet/AdminlyServlet" target="main">查看用户对商品的留言</a></h3></li>
     	</ul>
     </li>
     </ul>
  </body>
</html>
