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

<title>My JSP 'about-us.jsp' starting page</title>

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
<title>About Us</title>

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
<link rel='stylesheet' href='css/prettyPhoto.css' type='text/css'
	media='all'>
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
								<%if (u == null) { 
								%><li><a href="users/login.jsp">登录</a></li>
								<li><a href="users/zhuce.jsp">注册</a></li>
								<%
									} else {usersid = u.getUserid();
								%>欢迎用户：<%=u.getUsername()%>&nbsp;&nbsp;&nbsp;&nbsp;
								<li><a href="servlet/ZhuxiaoServlet">注销</a></li>
								<%}%>
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
			<div class="section section-bg-9 pt-11 pb-17">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h2 class="page-title text-center">关于我们</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="section border-bottom pt-2 pb-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumbs">
								<li><a href="#">主页</a></li>
								<li>关于我们</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="section pt-10 pb-10">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-center mb-1 section-pretitle">Welcome to
								Organik!</div>
							<h2 class="text-center section-title mtn-2">A little story
								about us</h2>
							<div class="organik-seperator mb-9 center">
								<span class="sep-holder"><span class="sep-line"></span></span>
								<div class="sep-icon">
									<i class="organik-flower"></i>
								</div>
								<span class="sep-holder"><span class="sep-line"></span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="about-main-img col-lg-6">
							<img src="images/my/bg/about1.jpg" alt="" />
						</div>
						<div class="about-content col-lg-6">
							<div class="about-content-title">
								<h4>经营理念</h4>
								<div class="about-content-title-line"></div>
							</div>
							<div class="about-content-text">
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								致力于成为顾客最喜爱的用餐场所及用餐方式，“品质、服务、清洁及物超所值”是始终坚持的经营理念。
								致力于成为深受顾客、供应商和公共健康社会团体高度认可的食品安全领袖，
								以及顾客充分信赖的食品安全品牌。</p>
								<p>
									"Quality, service, cleanliness and value for money" is our business philosophy.
									<br>
								</p>
							</div>
							<div class="about-carousel" data-auto-play="true"
								data-desktop="4" data-laptop="4" data-tablet="4" data-mobile="2">
								<a href="images/carousel/img_large_1.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_3.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a> <a href="images/carousel/img_large_2.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_2.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a> <a href="images/carousel/img_large_3.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_1.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a> <a href="images/carousel/img_large_4.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_4.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a> <a href="images/carousel/img_large_5.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_6.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a> <a href="images/carousel/img_large_6.jpg"
									data-rel="prettyPhoto[gallery]"> <img
									src="images/my/aboutxiao/about_5.jpg" alt="" /> <span
									class="ion-plus-round"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section bg-light pt-16 pb-6">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-center mb-1 section-pretitle">为什么选择我们的炸鸡店?</div>
							<div class="organik-seperator mb-9 center">
								<span class="sep-holder"><span class="sep-line"></span></span>
								<div class="sep-icon">
									<i class="organik-flower"></i>
								</div>
								<span class="sep-holder"><span class="sep-line"></span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-12">
							<div class="icon-boxes">
								<div class="icon-boxes-icon">
									<i class="ion-android-star-outline"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">吃的更健康.</h6>
									<p>获取推荐的日常肉和蔬菜.</p>
								</div>
							</div>
							<div class="icon-boxes">
								<div class="icon-boxes-icon">
									<i class="organik-lemon"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">我们有声誉.</h6>
									<p>我们一直在为客户提供健康产品.</p>
								</div>
							</div>
							<div class="icon-boxes">
								<div class="icon-boxes-icon">
									<i class="organik-cucumber"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">新鲜和无农药.</h6>
									<p>我们提供无农药且可持续生长的农产品.</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-12">
							<div class="text-center">
								<img src="images/my/bg/about2.png" alt="" />
							</div>
						</div>
						<div class="col-md-4 col-sm-12">
							<div class="icon-boxes right">
								<div class="icon-boxes-icon">
									<i class="organik-broccoli"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">无需承诺.</h6>
									<p>我们不需要承诺，可以让您取消或暂停交货.</p>
								</div>
							</div>
							<div class="icon-boxes right">
								<div class="icon-boxes-icon">
									<i class="organik-carrot"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">灵活性.</h6>
									<p>选择最适合您需求的投放频率.</p>
								</div>
							</div>
							<div class="icon-boxes right">
								<div class="icon-boxes-icon">
									<i class="organik-tomato"></i>
								</div>
								<div class="icon-boxes-inner">
									<h6 class="icon-boxes-title">定制化.</h6>
									<p>自定义标准投放，以排除不需要的物品.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section  pt-11 pb-10">
				<div class="container">
				
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
			<div class="backtotop" id="backtotop"	style="margin-bottom: -100px;"></div>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/modernizr-2.7.1.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type='text/javascript' src='js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='js/jquery.prettyPhoto.init.min.js'></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>