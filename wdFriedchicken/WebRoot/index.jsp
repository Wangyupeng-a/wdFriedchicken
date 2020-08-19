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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>Home</title>

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
<link rel="stylesheet" href="css/settings.css" type="text/css"
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
			<div class="section">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12 p-0">
							<div id="rev_slider" class="rev_slider fullscreenbanner">
								<ul>
									<li data-transition="fade" data-slotamount="default"
										data-hideafterloop="0" data-hideslideonmobile="off"
										data-easein="default" data-easeout="default"
										data-masterspeed="300" data-rotate="0"
										data-saveperformance="off" data-title="Slide"><img
										src="images/my/bg/index11.png" alt=""
										data-bgposition="center center" data-bgfit="cover"
										data-bgrepeat="no-repeat" data-bgparallax="off"
										class="rev-slidebg" />
										<div class="tp-caption rs-parallaxlevel-2" data-x="center"
											data-hoffset="" data-y="center" data-voffset="-80"
											data-width="['none','none','none','none']"
											data-height="['none','none','none','none']" data-type="image"
											data-responsive_offset="on"
											data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
											data-textAlign="['inherit','inherit','inherit','inherit']"
											data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
											data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
											<img src="images/slider/slide_6.png" alt="" />
										</div>
										<div class="tp-caption rs-parallaxlevel-1" data-x="center"
											data-hoffset="" data-y="center" data-voffset="-80"
											data-width="['none','none','none','none']"
											data-height="['none','none','none','none']" data-type="image"
											data-responsive_offset="on"
											data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
											data-textAlign="['inherit','inherit','inherit','inherit']"
											data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
											data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
											<img src="images/slider/slide_7.png" alt="" />
										</div> <a class="tp-caption btn-2 hidden-xs" href="servlet/SpallServlet?spzhonglei=0"
										data-x="['center','center','center','center']"
										data-y="['center','center','center','center']"
										data-voffset="['260','260','260','260']" data-width="['auto']"
										data-height="['auto']" data-type="button"
										data-responsive_offset="on" data-responsive="off"
										data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"300","ease":"Power0.easeIn","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(95,189,116);bg:rgba(51, 51, 51, 0);"}]'
										data-textAlign="['inherit','inherit','inherit','inherit']"
										data-paddingtop="[16,16,16,16]"
										data-paddingright="[30,30,30,30]"
										data-paddingbottom="[16,16,16,16]"
										data-paddingleft="[30,30,30,30]">现在去购物</a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section section-bg-1 section-cover pt-17 pb-3">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="mt-3 mb-3">
								<img src="images/my/bg/index1.png" alt="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="mb-1 section-pretitle default-left">欢迎来到</div>
							<h2 class="section-title mtn-2 mb-3">王迪炸鸡店</h2>
							<p class="mb-4">提供最好和最广泛的有机食品，让人们既享受美食又能保持健康，
							并在食品购物中带给人们新发现和冒险的感觉。</p>
							<a class="organik-btn arrow" href="servlet/SpallServlet?spzhonglei=0">我们的商品</a>
						</div>
					</div>
				</div>
			</div>
			<div class="section section-bg-2 section-cover pt-14">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="text-center">
								<div class="mb-1 section-pretitle white">限时热卖</div>
								<h2 class="section-title mtn-2 mb-3">天然鲜榨果汁</h2>
								<p class="white mb-4">
								鲜榨果汁进入人体消化系统后,会使血液呈碱性,把积存在细胞中的毒素,
								如铅、铝、汞等重金属和自由基等排出体外,因此有解毒排毒、净化机体的作用。
								 具有促进消化、增进食欲、美白肌肤、健美减肥的作用。
								</p>
								<div class="countdown-wrap mb-4">
									<div class="countdown-content">
										<div class="pl-clock countdown-bar" data-time="2020/6/30"></div>
									</div>
								</div>
								<a class="organik-btn brown" href="servlet/SpallServlet?spzhonglei=0">现在去购物</a>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="text-center floating">
								<img src="images/can.png" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section section-bg-3 pt-6 pb-6">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-center mb-1 section-pretitle">健康的</div>
							<h2 class="text-center section-title mtn-2">有机蔬菜</h2>
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
						<div class="col-md-4">
							<div class="organik-special-title">
								<div class="number">01</div>
								<div class="title">永远新鲜</div>
							</div>
							<p>由于特殊的栽培方式，因此能够保持产品的天然成份。
							不管是什么烹饪方式，都可以尽量的保持食物的原来味道，
							同时由于有机食品都在绿色的环境中成长，
							因此可以有效的避免爆发类似禽流感一类的疾病。</p>
							<div class="mb-8"></div>
							<div class="organik-special-title">
								<div class="number">02</div>
								<div class="title">保持健康</div>
							</div>
							<p>种植有机食品时一般都选用有机肥料，
							这样的肥料不仅不会损坏天壤同时还会让土壤越来越肥沃，给植物提供所需的所有元素。
							在这种营养安全土壤中成长的植物，其中所含有的营养势更加的丰富。</p>
						</div>
						<div class="col-md-4">
							<div class="mb-8"></div>
						</div>
						<div class="col-md-4">
							<div class="organik-special-title align-right">
								<div class="number">03</div>
								<div class="title">安全的农药</div>
							</div>
							<p>作物秸秆、畜禽粪肥、豆科作物、绿肥和有机废弃物是土壤肥力的主要来源；
							作物轮作以及各种物理、生物和生态措施，是控制病虫草害的主要手段。</p>
							<div class="mb-8"></div>
							<div class="organik-special-title align-right">
								<div class="number">04</div>
								<div class="title">保护土壤</div>
							</div>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							现如今土壤退化及污染日趋严重，而我们日常所
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							需的各种烦食物都以土壤为基本要素，
							如果土壤污染问题不能及时解决的话总有一天会导致食物没有生长的空间。
							而有机食品在种植过程中会更好的保护土壤以及维持土壤的生命力，
							这样才可以更好的为人类提供健康安全的有机蔬菜等食品。
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="section border-bottom mt-6 mb-5">
				<div class="container">
					<div class="row">
						<div class="organik-process">
							<div class="col-md-3 col-sm-6 organik-process-small-icon-step">
								<div class="icon">
									<i class="organik-delivery"></i>
								</div>
								<div class="content">
									<div class="title">免费送餐</div>
									<div class="text">所有订单超过￥10</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 organik-process-small-icon-step">
								<div class="icon">
									<i class="organik-hours-support"></i>
								</div>
								<div class="content">
									<div class="title">客户支持</div>
									<div class="text">支持24/7</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 organik-process-small-icon-step">
								<div class="icon">
									<i class="organik-credit-card"></i>
								</div>
								<div class="content">
									<div class="title">安全付款</div>
									<div class="text">已确认</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 organik-process-small-icon-step">
								<div class="icon">
									<i class="organik-lettuce"></i>
								</div>
								<div class="content">
									<div class="title">用爱制造</div>
									<div class="text">最好的服务</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section pt-12 pb-9">
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
	<script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
	<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.init.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

	<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.parallax.min.js"></script>
</body>
</html>
