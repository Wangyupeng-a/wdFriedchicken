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

<title>My JSP 'shop.jsp' starting page</title>

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
<title>Shop</title>

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
							</div>
							<div class="top-search-btn-wrap">
								<div class="top-search-btn">
									<a href="javascript:void(0);"><i class="ion-search"></i>
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
							<h2 class="page-title text-center">Shop</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="section border-bottom pt-2 pb-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumbs">
								<li><a href="index.jsp">首页</a></li>
								<li><a href="servlet/SpallServlet?spzhonglei=0">商品</a></li>
								<li>产品网格</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="section pt-7 pb-7">
				<div class="container">
					<div class="row">
						<div class="col-md-9 col-md-push-3">
							<div class="shop-filter">
								<div class="col-md-6">
									<p class="result-count">显示所有结果</p>
								</div>
								<div class="col-md-6">
									<div class="shop-filter-right">
										<div class="switch-view">
											<a href="shop-list.jsp" class="switcher"
												data-toggle="tooltip" data-placement="top" title=""
												data-original-title="List"><i class="ion-navicon"></i></a> <a
												href="servlet/SpallServlet" class="switcher active"
												data-toggle="tooltip" data-placement="top" title=""
												data-original-title="Grid"><i class="ion-grid"></i></a>
										</div>
										<form class="commerce-ordering">
											<select name="orderby" class="orderby">
												<option value="">按人气排行</option>
												<option value="">按评价排行</option>
												<option value="" selected="selected">最新上架</option>
												<option value="">价格排行：从低到高</option>
												<option value="">价格排行：从高到低</option>
											</select>
										</form>
									</div>
								</div>
							</div>
							<%
								Spdao spdao = new Spdao();
								int[] n = spdao.queryzhongleinumber();
							%>
							<div class="category-carousel-2 mb-3" data-auto-play="true"
								data-desktop="3" data-laptop="3" data-tablet="2" data-mobile="1">
								<div class="cat-item">
									<div class="cats-wrap" data-bg-color="#f8c9c2">
										<a href="servlet/SpallServlet?spzhonglei=1"> <img
											src="images/my/xiaotu4/zj.png" alt="" />
											<h2 class="category-title">
												炸鸡
												<mark class="count">(<%=n[0]%>)</mark>
											</h2>
										</a>
									</div>
								</div>
								<div class="cat-item">
									<div class="cats-wrap" data-bg-color="#ebd3c3">
										<a href="servlet/SpallServlet?spzhonglei=2"> <img
											src="images/my/xiaotu4/hb.png" alt="" />
											<h2 class="category-title">
												汉堡
												<mark class="count">(<%=n[1]%>)</mark>
											</h2>
										</a>
									</div>
								</div>
								<div class="cat-item">
									<div class="cats-wrap" data-bg-color="#c6e6f6">
										<a href="servlet/SpallServlet?spzhonglei=3"> <img
											src="images/my/xiaotu4/xs.png" alt="" />
											<h2 class="category-title">
												小食
												<mark class="count">(<%=n[2]%>)</mark>
											</h2>
										</a>
									</div>
								</div>
								<div class="cat-item">
									<div class="cats-wrap" data-bg-color="#e0d1a1">
										<a href="servlet/SpallServlet?spzhonglei=4"> <img
											src="images/my/xiaotu4/yl.png" alt="" />
											<h2 class="category-title">
												饮料
												<mark class="count">(<%=n[3]%>)</mark>
											</h2>
										</a>
									</div>
								</div>
							</div>
							<%
								List<Sp> list = new ArrayList<Sp>();
								list = (List) request.getAttribute("splist");
							%>
							<div class="product-grid">
								<%
									for (int i = 0; i < list.size(); i++) {
								%>
								<div class="col-md-4 col-sm-6 product-item text-center mb-3">
									<div class="product-thumb">
										<a href="servlet/SponeServlet?spid=<%=list.get(i).getSpid()%>">
											<div class="badges">
												<span class="hot">最热</span>
												<%
													if (i < list.size() - 1) {
												%>
												<span class="onsale">特价!</span>
												<%
													}
												%>
											</div> <img src="<%=list.get(i).getSpimg()%>" alt="" />
										</a>
										<div class="product-action">
											<span class="add-to-cart"> <a href="servlet/ShopcarinputServlet?spid=<%=list.get(i).getSpid()%>&&userid=<%=usersid%>"
												data-toggle="tooltip" data-placement="top"
												title="Add to cart"></a>
											</span> <span class="wishlist"> <a href="#"
												data-toggle="tooltip" data-placement="top"
												title="Add to wishlist"></a>
											</span> <span class="quickview"> <a href="#"
												data-toggle="tooltip" data-placement="top" title="Quickview"></a>
											</span> <span class="compare"> <a href="#"
												data-toggle="tooltip" data-placement="top" title="Compare"></a>
											</span>
										</div>
									</div>
									<div class="product-info">
										<a href="servlet/SponeServlet?spid=<%=list.get(i).getSpid()%>">
											<h2 class="title"><%=list.get(i).getSpname()%></h2> <span
											class="price"> <%
 												if (i < list.size() - 1) {
 											%> <del>
													￥<%=list.get(i).getSpjiage() + 3%></del> <%
 												}
 											%> <ins>
													￥<%=list.get(i).getSpjiage()%></ins>
										</span>
										</a>
									</div>
								</div>

								<%
									}
								%>

							</div>
							<div class="pagination">
								<a class="prev page-numbers" href="#">上一页</a> <span
									class="page-numbers current">1</span> <a class="page-numbers "
									href="#">2</a> <a class="page-numbers" href="#">3</a> <a
									class="next page-numbers" href="#">下一页</a>
							</div>
						</div>
						<div class="col-md-3 col-md-pull-9">
							<div class="sidebar">
								<div class="widget widget-product-search">
									<form class="form-search" action="servlet/SpqueryServlet" method="post">
										<input type="text" class="search-field" placeholder="搜索商品…"
											value="" name="spname" /> <input type="submit" value="Search" />
									</form>
								</div>
								<div class="widget widget-product-categories">
									<h3 class="widget-title">产品类别</h3>
									<ul class="product-categories">
										<li><a href="servlet/SpallServlet?spzhonglei=1">炸鸡</a> <span
											class="count"><%=n[0]%></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=2">汉堡</a> <span
											class="count"><%=n[1]%></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=3">小食</a> <span
											class="count"><%=n[2]%></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=4">饮料</a> <span
											class="count"><%=n[3]%></span></li>
									</ul>
								</div>
								<div class="widget widget_price_filter">
									<h3 class="widget-title">按价格查找</h3>
									<div class="price_slider_wrapper">
										<div class="price_slider" style="display:none;"></div>
										<div class="price_slider_amount">
											<input type="text" id="min_price" name="min_price" value=""
												data-min="0" placeholder="Min price"> <input
												type="text" id="max_price" name="max_price" value=""
												data-max="150" placeholder="Max price">
											<button type="submit" class="button">查找</button>
											<div class="price_label" style="display:none;">
												价格: <span class="from"></span> &mdash; <span class="to"></span>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<% 
								int nnn=0;
								if(list.size()>=5){
								nnn = 5;
								
								}else{
								nnn=list.size();
								} %>
								<div class="widget widget-products">
									<h3 class="widget-title">产品展示</h3>
									<ul class="product-list-widget">
										<%
											for (int i = 0; i < nnn; i++) {
										%>
										<li><a
											href="servlet/SponeServlet?spid=<%=list.get(i).getSpid()%>">
												<img src="<%=list.get(i).getSpimg()%>" alt="" /> <span
												class="product-title"><%=list.get(i).getSpname()%></span>
										</a> <del>
												￥<%=list.get(i).getSpjiage() + 3%></del> <ins>
												￥<%=list.get(i).getSpjiage()%></ins></li>
										<%
											}
										%>
									</ul>
								</div>
								<div class="widget widget-tags">
									<h3 class="widget-title">产品标签</h3>
									<div class="tagcloud">
										<a href="#">食物</a> <a href="#">炸鸡</a> <a href="#">汉堡</a> <a
											href="#">快餐</a> <a href="#">可乐</a> <a href="#">美食</a>
									</div>
								</div>
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
	<script type='text/javascript' src='js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='js/jquery.prettyPhoto.init.min.js'></script>
	<script type="text/javascript" src="js/script.js"></script>

	<script type="text/javascript" src="js/core.min.js"></script>
	<script type="text/javascript" src="js/widget.min.js"></script>
	<script type="text/javascript" src="js/mouse.min.js"></script>
	<script type="text/javascript" src="js/slider.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.touch-punch.js"></script>
	<script type="text/javascript" src="js/price-slider.js"></script>
</body>
</html>