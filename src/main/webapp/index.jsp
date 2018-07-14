﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>邻家后台管理</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/fontsawesome/css/font-awesome.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
<div class="header">
	<div class="logo">
		<a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"/></a>
	</div>
	<div class="nav">
		<ul class="clearfix">
			<li>
				<i class="fa fa-paste font_lager"></i>
				<p data-fast="new_order">开 单</p>
			</li>
			<li>
				<i class="fa fa-user-plus font_lager"></i>
				<p data-fast="add_user">添加会员</p>
			</li>
			<li>
				<i class="fa fa-file-text font_lager"></i>
				<p data-id="order">订单管理</p>
			</li>
			<li>
				<i class="fa fa-user-circle-o font_lager"></i>
				<p data-id="user">会员管理</p>
			</li>
			<li>
				<i class="fa fa-users font_lager"></i>
				<p data-id="staff">员工管理</p>
			</li>
			<li>
				<i class="fa fa-cube font_lager"></i>
				<p data-id="goods">商品管理</p>
			</li>
			<li>
				<i class="fa fa-fax font_lager"></i>
				<p data-id="appointment">本店预约</p>
			</li>
			<li>
				<i class="fa fa-credit-card font_lager"></i>
				<p data-id="presell">预售卡</p>
			</li>
			<li>
				<i class="fa fa-cogs font_lager"></i>
				<p data-id="expenses">消耗管理</p>
			</li>
			<li>
				<i class="fa fa-commenting font_lager"></i>
				<p data-id="comment">本店评论</p>
			</li>
			<li>
				<i class="fa fa-line-chart font_lager"></i>
				<p data-id="business">业绩统计</p>
			</li>
			<li>
				<i class="fa fa-cab font_lager"></i>
				<p data-id="after_sales">售后管理</p>
			</li>
		</ul>
	</div>
	<div class="nav_roll f_left" style="display:none;">
		<div class="f_left">
			<i class="fa fa-caret-left fa-1x"></i>
		</div>
		<div class="f_right">
			<i class="fa fa-caret-right fa-1x"></i>
		</div>
	</div>
	<ul class="login_msg">
		<li title="太原火车站">太原火车站</li>
		<li><a href="javascript:void(0);">退出</a></li>
	</ul>
</div>
<!--top end-->
<div class="main_left">
	<h2><i class="menu_icon fa fa-reorder"></i></h2>
	<ul class="menu">
		<!--本店评论-->
		<li>
			<i class="menu_icon fa fa-commenting-o"></i>
			<a href="javascript:void(0);" data-id="comment" data-href="Comment.jsp">本店评论</a>
		</li>
		<!--商品管理-->
		<li>
			<i class="menu_icon fa fa-list"></i>
			<a href="javascript:void(0);" data-id="goods" data-href="goods_List.jsp">商品列表</a>
		</li>
		<li>
			<i class="menu_icon fa fa-cube"></i>
			<a href="javascript:void(0);" data-id="goods" data-href="add_Goods.jsp">添加商品</a>
		</li>
		<li>
			<i class="menu_icon fa fa-sitemap"></i>
			<a href="javascript:void(0);" data-id="goods" data-href="goods_CLassify.jsp">商品分类管理</a>
		</li>
		<!--消耗管理-->
		<li>
			<i class="menu_icon fa fa-history"></i>
			<a href="javascript:void(0);" data-id="expenses" data-href="expenses_Record.jsp">出入库记录</a>
		</li>
		<li>
			<i class="menu_icon fa fa-hourglass-half"></i>
			<a href="javascript:void(0);" data-id="expenses" data-href="Expenses.jsp">消耗品管理</a>
		</li>
		<!--员工管理-->
		<li>
			<i class="menu_icon fa fa-users"></i>
			<a href="javascript:void(0);" data-id="staff" data-href="staff_List.jsp">员工列表</a>
		</li>
		<li>
			<i class="menu_icon fa fa-plus-square"></i>
			<a href="javascript:void(0);" data-id="staff" data-href="add_Staff.jsp">添加员工</a>
		</li>
		<!--会员管理-->
		<li>
			<i class="menu_icon fa fa-user"></i>
			<a href="javascript:void(0);" data-id="user" data-href="user_List.jsp">本店会员</a>
		</li>
		<li>
			<i class="menu_icon fa fa-user-plus"></i>
			<a href="javascript:void(0);" data-id="user" data-fast="add_user" data-href="add_User.jsp">添加会员</a>
		</li>
		<li>
			<i class="menu_icon fa fa-vcard"></i>
			<a href="javascript:void(0);" data-id="user" data-href="user_Info.jsp">会员信息</a>
		</li>
		<!--订单管理-->
		<li>
			<i class="menu_icon fa fa-file-text-o"></i>
			<a href="javascript:void(0);" data-id="order" data-href="order_List.jsp">订单列表</a>
		</li>
		<li>
			<i class="menu_icon fa fa-clipboard"></i>
			<a href="javascript:void(0);" data-id="order" data-fast="new_order" data-href="new_Order.jsp">开单</a>
		</li>
		<!--预售卡管理-->
		<li>
			<i class="menu_icon fa fa-credit-card-alt"></i>
			<a href="javascript:void(0);" data-id="presell" data-href="presell_Card.jsp">预售卡</a>
		</li>
		<!--本店预约管理-->
		<li>
			<i class="menu_icon fa fa-calendar-check-o"></i>
			<a href="javascript:void(0);" data-id="appointment" data-href="Appointment.jsp">本店预约</a>
		</li>
		<!--售后管理-->
		<li>
			<i class="menu_icon fa fa-th"></i>
			<a href="javascript:void(0);" data-id="after_sales" data-href="afterSales_List.jsp">售后列表</a>
		</li>
		<li>
			<i class="menu_icon fa fa-plus-square"></i>
			<a href="javascript:void(0);" data-id="after_sales" data-href="add_afterSales.jsp">新增售后</a>
		</li>
		<!--业绩统计-->
		<li>
			<i class="menu_icon fa fa-bar-chart"></i>
			<a href="javascript:void(0);" data-id="business" data-href="business_Search.jsp">业绩查询</a>
		</li>
		<li>
			<i class="menu_icon fa fa-pie-chart"></i>
			<a href="javascript:void(0);" data-id="business" data-href="business_Chart.jsp">业绩报表</a>
		</li>
		<li>
			<i class="menu_icon fa fa-area-chart"></i>
			<a href="javascript:void(0);" data-id="business" data-href="sale_Search.jsp">销售报表</a>
		</li>
	</ul>
</div>
<!--left end-->
<div class="main_right">
	<iframe src="Hello.jsp" name="cont_box" frameborder="0" width="100%" height="100%" seamless></iframe>
</div>
<!--desktop end-->
<!--javascript include-->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/tipSuppliers.js"></script>
<script>
	$("iframe[name='cont_box']").on("load",function(){
		$(".loading").hide();
		setTimeout(function(){$("iframe[name='cont_box']").css("opacity","1");},500);
	});
	$(function(){
		$(".loading").hide();
		setTimeout(function(){$("iframe[name='cont_box']").css("opacity","1");},500);
		$(".nav li:first").trigger("click");
	});
	jQuery("body").jrdek({Mtop:".header",Mleft:".main_left",Mright:".main_right",foldCell:".main_left h2"});
	$(".logo").click(function(){
		$("iframe[name='cont_box']").prop("src","Hello.jsp");
	});
</script>
</body>
</html>