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

<title>My JSP 'shop-detail.jsp' starting page</title>

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
<title>Shop Detail</title>

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
<link rel='stylesheet' href='css/slick.css' type='text/css' media='all'>
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
			<div class="section section-bg-10 pt-11 pb-17">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h2 class="page-title text-center">Shop Detail</h2>
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
								<li><a href="servlet/SpallServlet?spzhonglei=0">商品</a></li>
								<li>店铺详情</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<%
									Sp	sp = new Sp();
									sp = (Sp) request.getAttribute("sp");
									List<Ly> listly = new ArrayList<Ly>();
									listly =(List<Ly>)request.getAttribute("listly");
								 %>
			<div class="section pt-7 pb-7">
				<div class="container">
					<div class="row">
						<div class="col-md-9 col-md-push-3">
							<div class="single-product">
								<div class="col-md-6">
									<div class="image-gallery">
										<div class="image-gallery-inner">
											<div>
												<div class="image-thumb">
													<a href="<%=sp.getSpimg() %>"
														data-rel="prettyPhoto[gallery]"> <img
														src="<%=sp.getSpimg() %>" alt="" />
													</a>
												</div>
											</div>
											<div>
												<div class="image-thumb">
													<a href="images/shop/large/shop_2.jpg"
														data-rel="prettyPhoto[gallery]"> <img
														src="images/shop/shop_3.jpg" alt="" />
													</a>
												</div>
											</div>
											<div>
												<div class="image-thumb">
													<a href="images/shop/large/shop_3.jpg"
														data-rel="prettyPhoto[gallery]"> <img
														src="images/shop/shop_4.jpg" alt="" />
													</a>
												</div>
											</div>
										</div>
									</div>
									
								</div>
								
								<div class="col-md-6">
									<div class="summary">
										<h1 class="product-title"><%=sp.getSpname()%></h1>
										<div class="product-rating">
											<div class="star-rating">
												<span style="width:100%"></span>
											</div>
											<i>(<%=listly.size()%>条评论&nbsp;)</i>
										</div>
										<div class="product-price">
											<del>￥<%=sp.getSpjiage()+3 %></del>
											<ins>￥<%=sp.getSpjiage()%></ins>
										</div>
										<div class="mb-3">
											<p><%=sp.getSpjieshao() %>
											.</p>
										</div>
										<form class="cart"  action="servlet/ShopcarinputServlet?spid=<%=sp.getSpid()%>&&userid=<%=usersid%>" method="post">
											<div class="quantity-chooser">
												<div class="quantity">
													<span class="qty-minus" data-min="1"><i
														class="ion-ios-minus-outline"></i></span> <input type="text"
														name="quantity" value="1" title="Qty"
														class="input-text qty text" size="4"> <span
														class="qty-plus" data-max=""><i
														class="ion-ios-plus-outline"></i></span>
												</div>
											</div>
											<button type="submit" class="single-add-to-cart">添加到购物车</button>
										</form>
										
										<div class="product-meta">
											<table>
												<tbody>
													<tr>
														<td class="label">类别</td>
														<%
															int m = 0;
															if(sp.getSpzhonglei().equals("炸鸡")){
															m=1;
															}else if(sp.getSpzhonglei().equals("汉堡")){
															m=2;
															}else if(sp.getSpzhonglei().equals("小食")){
															m=3;
															}else if(sp.getSpzhonglei().equals("饮料")){
															m=4;
															}
														 %>
														<td><a href="servlet/SpallServlet?spzhonglei=<%=m%>"><%=sp.getSpzhonglei() %></a></td>
													</tr>
													<tr>
														<td class="label">分享</td>
														<td class="share"><a target="_blank" href="#"><i
																class="fa fa-facebook"></i></a> <a target="_blank" href="#"><i
																class="fa fa-twitter"></i></a> <a target="_blank" href="#"><i
																class="fa fa-google-plus"></i></a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-md-12" style="margin-top: -240px;">
									<div class="commerce-tabs tabs classic">
										<ul class="nav nav-tabs tabs">
											<li class="active"><a data-toggle="tab" href="#tab-reviews"
												aria-expanded="true">评论</a></li>
										</ul>
										<div class="tab-content">
											<div id="tab-reviews" class="tab-pane fade active in">
												<div class="single-comments-list mt-0">
													<div class="mb-2">
														<h2 class="comment-title"><%=listly.size()%>条关于<%=sp.spname%>的评论</h2>
													</div>
													<%
														for(int i =0;i<listly.size();i++){%>
														
														<ul class="comment-list">
														<li>
															<div class="comment-container">
																<div class="comment-author-vcard">
																	<img alt="" src="images/avatar/avatar.png" />
																</div>
																<div class="comment-author-info">
																	<span class="comment-author-name">用户：<%=listly.get(i).getUser().getUsername()%>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	
																	</span> 
																	<a href="#" class="comment-date">时间：<%=listly.get(i).getLytime()%></a>
																	<p><%=listly.get(i).getLyneirong()%></p>
																</div>
																<div class="reply">
																	<a class="comment-reply-link" href="#">回复</a>
																</div>
															</div>
															
														</li>
														
													</ul>
														<%}
													
													 %>
												</div>
												<div class="single-comment-form mt-0">
													<div class="mb-2">
														<h2 class="comment-title">发表评论</h2>
													</div>
													<form class="comment-form" action="servlet/LyinputServlet?spid=<%=sp.getSpid()%>&&userid=<%=usersid%>" method="post">
														<div class="row">
															<div class="col-md-12">
																<textarea id="comment" name="lyneirong" cols="45" rows="5"
																	placeholder="请输入你对该商品的评价..."></textarea>
															</div>
														</div>
														<font color=red>${massage}</font>
														<br>
														<div class="row">
															<div class="col-md-2">
																<input name="submit" type="submit" id="submit"
																	class="btn btn-alt btn-border" value="评价">
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="related">
										<div class="related-title">
											<div class="text-center mb-1 section-pretitle fz-34">相关</div>
											<h2 class="text-center section-title mtn-2 fz-24">产品展示</h2>
										</div>
										<%
											List<Sp> listzhonglei = new ArrayList<Sp>();
											listzhonglei = (List)request.getAttribute("listzhonglei");
										 %>
										<div class="product-carousel p-0" data-auto-play="true"
											data-desktop="3" data-laptop="2" data-tablet="2"
											data-mobile="1">
											<%
												for(int i= 0;i<4;i++){%>
													<div class="product-item text-center">
												<div class="product-thumb">
													<a href="servlet/SponeServlet?spid=<%=listzhonglei.get(i).getSpid()%>">
														<div class="badges">
															<span class="hot">Hot</span>
														</div> <img src="<%=listzhonglei.get(i).getSpimg() %>" alt="" />
													</a>
													<div class="product-action">
														<span class="add-to-cart"> <a href="#"
															data-toggle="tooltip" data-placement="top"
															title="Add to cart"></a>
														</span> <span class="wishlist"> <a href="#"
															data-toggle="tooltip" data-placement="top"
															title="Add to wishlist"></a>
														</span> <span class="quickview"> <a href="#"
															data-toggle="tooltip" data-placement="top"
															title="Quickview"></a>
														</span> <span class="compare"> <a href="#"
															data-toggle="tooltip" data-placement="top"
															title="Compare"></a>
														</span>
													</div>
												</div>
												<div class="product-info">
													<a href="servlet/SponeServlet?spid=<%=listzhonglei.get(i).getSpid()%>">
														<h2 class="title"><%=listzhonglei.get(i).spname %></h2> <span class="price">￥<%=listzhonglei.get(i).getSpjiage() %></span>
													</a>
												</div>
											</div>
												<%}%>
										</div>
									</div>
								</div>
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
									<%
								Spdao spdao = new Spdao();
								int[] n = spdao.queryzhongleinumber();
							 %>
									<ul class="product-categories">
										<li><a href="servlet/SpallServlet?spzhonglei=1">炸鸡</a> <span class="count"><%=n[0] %></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=2">汉堡</a> <span class="count"><%=n[1] %></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=3">小食</a> <span class="count"><%=n[2] %></span></li>
										<li><a href="servlet/SpallServlet?spzhonglei=4">饮料</a> <span class="count"><%=n[3] %></span></li>
									</ul>
								</div>
								<% 
								int nnn=0;
								if(listzhonglei.size()>=3){
								nnn = 3;
								
								}else{
								nnn=listzhonglei.size();
								} %>
								<div class="widget widget-products">
									<h3 class="widget-title">产品展示</h3>
									<%for(int i = 0;i<nnn;i++){%>
									<ul class="product-list-widget">
										<li><a href="servlet/SponeServlet?spid=<%=listzhonglei.get(i).getSpid()%>"> <img
												src="<%=listzhonglei.get(i).getSpimg() %>" alt="" /> <span
												class="product-title"><%=listzhonglei.get(i).getSpname()%></span>
										</a> <del>￥<%=listzhonglei.get(i).getSpjiage()+3 %></del>
										 <ins>￥<%=listzhonglei.get(i).getSpjiage()%></ins></li>
									</ul>
									 <%}%>
									
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
	<script type='text/javascript' src='js/slick.min.js'></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
