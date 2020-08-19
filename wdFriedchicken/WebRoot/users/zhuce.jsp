<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>Home</title>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/ionicons.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
<link rel="stylesheet" href="css/settings.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/custom.css" type="text/css" media="all">
<link href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style type="text/css">
	#login{
		width: 350px;
		height: 600px; 
		margin-top :-50px;
		margin-left: 56%;
		margin-bottom:150px;
		padding:50px 50px 0px 50px;
		border-style:solid;
		border-color:gray;
	}
	#kuan{
	margin-top :100px;
	}
</style>
</head>
<body>

 


<div class="noo-spinner">
	<div class="spinner">
		<div class="cube1"></div>
		<div class="cube2"></div>
	</div>
</div>
<div id="menu-slideout" class="slideout-menu hidden-md-up">
	<div class="mobile-menu">
		<ul id="mobile-menu" class="menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="about-us.jsp">About us</a></li>
			<li><a href="shop.jsp">Shop</a></li>
			<li><a href="shop-list.jsp">Shop List</a></li>
			<li><a href="cart.jsp">Cart</a></li>
			<li><a href="checkout.jsp">Checkout</a></li>
			<li><a href="contact-us.jsp">Contact</a></li>
		</ul>
	</div>
</div>
<div class="site">
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="topbar-text">
						<span>工作时间：星期一-星期五：08AM-06PM</span> 
						<span>星期六-星期日：10AM-06PM</span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="topbar-menu">
						<ul class="topbar-menu">
							<li class="dropdown">
								<a href="#">语言</a>
								<ul class="sub-menu">
									<li><a href="#">中文</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</li>
							<li>
							<a href="index.jsp">主页</a>
							</li>
							<li><a href="users/login.jsp">登录</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div   class="backimg"  id = "kuan" style="background-image:url('images/my/denglubeijingtu.png');background-repeat:no-repeat;padding-top: 10px;">
		
			<div id="login">
			<form action="servlet/ZhuceServlet" method="post">
				<div >用&nbsp;&nbsp;&nbsp;户&nbsp;&nbsp;&nbsp;名：<input type="text" name="username" style="width: 155px"></div>
				<br>
				<div>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
				 <input type="password" name="userpwd" style="width: 155px"></div>
				<br>
				<div>确认密码： <input type="password" name="userpwd1" style="width: 155px"></div>
				<br>
				<div>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： 
				<input type="text" name="usersex" style="width: 155px"></div>
				<br>
				<div>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄： 
				<input type="text" name="userage" style="width: 155px"></div>
				<br>
				<div>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话： 
				<input type="text" name="usertel" style="width: 155px"></div>
				<br>
				&nbsp;&nbsp;<font color=red>${massage}</font>
				<br><br>
				<button type="submit" type="submit" name= "anniu"value="zhuce" style="margin-left: 65px">确认注册</button>
				<br>
				<br>
				
			</form>
			</div>
		</div>

	</div>
	
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
						Copyright &copy; 2020.计科专接本1901班王迪版权所有.
					</div>
				<div class="col-md-4">
					<img src="images/footer_payment.png" alt="" />
				</div>
			</div>
		</div>
		<div class="backtotop" id="backtotop"></div>
	</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/modernizr-2.7.1.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
<script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.init.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="js/extensions/revolution.extension.parallax.min.js"></script>
</body>
</html>
