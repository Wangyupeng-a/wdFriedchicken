<%@ page language="java" import="java.util.*,dao.*,javabean.*"
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

<title>My JSP 'contact-us.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>Contact Us</title>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ionicons.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/custom.css" type="text/css" media="all">
<link
	href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
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
							<span>工作时间：星期一-星期五：08AM-06PM</span> <span>星期六-星期日：10AM-06PM</span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="topbar-menu">
							<ul class="topbar-menu">
								<li class="dropdown"><a href="#">语言</a>
									<ul class="sub-menu">
										<li><a href="#">中文</a></li>
										<li><a href="#">English</a></li>
									</ul></li>
								<%
									Users u = new Users();
									u = (Users) session.getAttribute("u");
									int usersid = 0;
								%>
								<%
									if (u == null) {
								%><li><a href="users/login.jsp">登录</a></li>
								<li><a href="users/zhuce.jsp">注册</a></li>
								<%
									} else {
										usersid = u.getUserid();
								%>欢迎用户：<%=u.getUsername()%>&nbsp;&nbsp;&nbsp;&nbsp;
								<li><a href="servlet/ZhuxiaoServlet">注销</a></li>
								<%
									}
								%>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<header id="header" class="header header-desktop header-2">
		<div class="top-search">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<form action="servlet/SpqueryServlet" method="post">
							<input type="search" class="top-search-input" name="spname"
								placeholder="请输入要搜索的商品..." />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a href="#" id="logo"> <img class="logo-image"
						src="images/logo.png" alt="Organik Logo" />
					</a>
				</div>
				<div class="col-md-9">
					<div class="header-right">
						<nav class="menu">
						<ul class="main-menu">
							<li><a href="index.jsp">首页</a></li>
							<li><a href="about-us.jsp">关于我们</a></li>
							<li><a href="servlet/SpallServlet?spzhonglei=0">商品</a></li>
							<li><a href="servlet/ShopcarokServlet?userid=<%=usersid%>">商品清单</a></li>
							<li><a href="servlet/ShopcarServlet?userid=<%=usersid%>">购物车</a></li>
							<li><a href="servlet/FukuanServlet?userid=<%=usersid%>">付款</a></li>
							<li><a href="servlet/Tocontact_usServlet?userid=<%=usersid%>">联系</a></li>
						</ul>
						</nav>
						<div class="btn-wrap">
							<div class="mini-cart-wrap">
								<div class="mini-cart">
									<div class="mini-cart-icon" data-count="">
										<a href="servlet/ShopcarServlet?userid=<%=usersid%>">
										<i class="ion-bag"></i></a>
									</div>
								</div>
								
							<div class="top-search-btn-wrap">
								<div class="top-search-btn">
									<a href="javascript:void(0);"> <i class="ion-search"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>
		<header class="header header-mobile">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div class="header-left">
						<div id="open-left">
							<i class="ion-navicon"></i>
						</div>
					</div>
				</div>
				<div class="col-xs-8">
					<div class="header-center">
						<a href="#" id="logo-2"> <img class="logo-image"
							src="images/logo.png" alt="Organik Logo" />
						</a>
					</div>
				</div>
				<div class="col-xs-2">
					<div class="header-right">
						<div class="mini-cart-wrap">
							<a href="cart.jsp">
								<div class="mini-cart">
									<div class="mini-cart-icon" data-count="2">
										<i class="ion-bag"></i>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>
		<div id="main">
			<div class="section section-bg-10 pt-11 pb-17">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h2 class="page-title text-center">联系我们</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="section border-bottom pt-2 pb-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumbs">
								<li><a href="#">首页</a></li>
								<li>联系我们</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="section pt-10 pb-10">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-center mb-1 section-pretitle">保持联系</div>
							<h2 class="text-center section-title mtn-2">健康炸鸡</h2>
							<div class="organik-seperator mb-6 center">
								<span class="sep-holder"><span class="sep-line"></span></span>
								<div class="sep-icon">
									<i class="organik-flower"></i>
								</div>
								<span class="sep-holder"><span class="sep-line"></span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div id="googleMap" class="mb-6" style="height: 350px;margin-left: 20px;"
								data-icon="images/icon_location.png" data-lat="37.789133"
								data-lon="-122.402158">
								<img src="images/my/bg/2.jpg" alt="" />
								</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-map-marker"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">地址</h6>
									<div class="contact-content">
										河北省石家庄市<br>桥西区红旗大街9999号
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-phone"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">热线</h6>
									<div class="contact-content">0311-1234567</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-envelope"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">电子邮箱</h6>
									<div class="contact-content">
										123456@163.com
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-globe"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">网站</h6>
									<div class="contact-content">www.wddzhajishop.com</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<hr class="mt-4 mb-7" />
							<div class="text-center mb-1 section-pretitle">给我们留言</div>
							<div class="organik-seperator mb-6 center">
								<span class="sep-holder"><span class="sep-line"></span></span>
								<div class="sep-icon">
									<i class="organik-flower"></i>
								</div>
								<span class="sep-holder"><span class="sep-line"></span></span>
							</div>
							<div class="contact-form-wrapper">
								<form class="contact-form" action="servlet/UsertoadminlyServlet?userid=<%=usersid%>" method="post">
									<div class="row">
										<div class="col-md-6">
											<label>你的名字 <span class="required">*</span></label>
											<div class="form-wrap">
												<input type="text" name="your-name" value="<%=u.getUsername() %>" size="40" disabled/>
											</div>
										</div>
										<div class="col-md-6">
											<label>你的邮箱 <span class="required">*</span></label>
											<div class="form-wrap">
												<input type="email" name="adminlyemail" value="" size="40" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<label>你的电话 <span class="required">*</span></label>
											<div class="form-wrap">
												<input type="text" name="adminlytel" value="" size="40" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<label>留言</label>
											<div class="form-wrap">
												<textarea name="adminlyneirong" cols="40" rows="10"></textarea>
											</div>
										</div>
									</div>
									<font color=red>${massage}</font>
									<br>
									<div class="row">
										<div class="col-md-12">
											<div class="form-wrap text-center">
												<input type="submit" value="留言" />
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
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
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/modernizr-2.7.1.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.init.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	
</body>
</html>
