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

<title>My JSP 'checkout.jsp' starting page</title>

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
<title>Checkout</title>

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
								%>

								<li><a href="users/login.jsp">登录</a></li>
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
							<h2 class="page-title text-center">Checkout</h2>
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
								<li>结算</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<%
				List<Shopcar> listshopcar = new ArrayList<Shopcar>();
				listshopcar = (List<Shopcar>) request.getAttribute("listshopcar");
				int jiage = 0;
			%>
			<div class="section section-checkout pt-7 pb-7">
				<form action="servlet/FukuanokServlet?userid=<%=usersid%>" method="post">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h3>送货地址及结算明细</h3>

								<div class="row">
									<div class="col-md-6">
										<label>用户名 <span class="required">*</span></label>
										<div class="form-wrap">
											<input type="text" name="your-firstname"
												value="<%=u.getUsername()%>" size="40" disabled />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>省<span class="required">*</span></label>
										<div class="form-wrap">
											<select name="addresssheng" id="country">
												<option value="河北省">河北省</option>
												<option value="北京市">北京市</option>
												<option value="山西省">山西省</option>
												<option value="河南省">河南省</option>
												<option value="天津市">天津市</option>
												<option value="陕西省">陕西省</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>市区<span class="required">*</span></label>
										<div class="form-wrap">
											<input type="text" name="addressshiqu" value="${addressshiqu}" size="40" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>详细地址<span class="required">*</span></label>
										<div class="form-wrap">
											<input type="text" name="addressxiangxi" value="${addressxiangxi}" size="40" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>电话 <span class="required">*</span></label>
										<div class="form-wrap">
											<input type="text" name="addresstel" value="${addresstel}" size="40" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>备注</label>
										<div class="form-wrap">
											<textarea name="addressbeizhu" class="input-text "
												id="order_comments" placeholder="您对订单有什么要求..." rows="2"
												cols="5"></textarea>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-wrap">
											<input name="createaccount" type="checkbox"
												id="createaccount" value="1" /> <span>Create an
												account?</span>
										</div>
									</div>
								</div>

							</div>

						</div>
						<div class="row">
							<div class="col-md-12">
								<h3 class="mt-3">您的订单</h3>
								<div class="order-review">
									<table class="checkout-review-order-table">
										<thead>
											<tr>
												<th class="product-name">商品</th>
												<th class="product-total">总价</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 0; i < listshopcar.size(); i++) {
													jiage = jiage + listshopcar.get(i).getSp().getSpjiage()
															* listshopcar.get(i).getCarspnumber();
											%>
											<tr>
												<td class="product-name"><%=listshopcar.get(i).getSp().getSpname()%>&nbsp;<strong
													class="product-quantity">× <%=listshopcar.get(i).getCarspnumber()%></strong>
												</td>
												<td class="product-total">￥<%=listshopcar.get(i).getSp().getSpjiage()
						* listshopcar.get(i).getCarspnumber()%></td>
											</tr>
											<%
												}
											%>

										</tbody>
										<tfoot>
											<tr>
												<th>小计</th>
												<td>￥<%=jiage%></td>
											</tr>
											<tr>
												<th>配送方式</th>
												<td>
													<ul id="shipping_method">
														<li><input type="radio" name="shipping_method[0]"
															data-index="0" id="shipping_method_0_free_shipping1"
															value="free_shipping:1" class="shipping_method"
															checked="checked"> <span>免费送货</span></li>
														<li><input type="radio" name="shipping_method[0]"
															data-index="0" id="shipping_method_0_local_pickup2"
															value="local_pickup:2" class="shipping_method"> <span>到店来取</span>
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<th>餐盒包装费</th>
												<td>优惠期间限时免费</td>
											</tr>
											<tr class="order-total">
												<th>总计</th>
												<td><strong>￥<%=jiage%></strong></td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="checkout-payment">
									<div class="text-right text-center-sm" >
										<%
											if(listshopcar.size()==0){%>
											<a class="organik-btn mt-6" href="servlet/SpallServlet?spzhonglei=0">去购物</a>
											
										<% 	}else{ %>
											<input class="organik-btn mt-6" type="submit" value="立即下单" style="font-size:16px;height: 48px;"/>
											<%} %>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
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
</body>
</html>