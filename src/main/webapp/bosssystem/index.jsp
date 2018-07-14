<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>邻家后台管理</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/fontsawesome/css/font-awesome.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/boss.css"/>
</head>
<body>
<div class="header">
	<div class="logo">
		<a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"/></a>
	</div>
	<div class="nav">
		<ul class="clearfix">
			<li>
				<i class="fa fa-line-chart font_lager"></i>
				<p data-id="daydata">今日数据</p>
			</li>
			<li>
				<i class="fa fa-pie-chart font_lager"></i>
				<p data-id="store">门店数据</p>
			</li>
			<li>
				<i class="fa fa-commenting font_lager"></i>
				<p data-id="comment">评论</p>
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
		<li style="font-weight:600;">您好，王先生</li>
		<li><a href="javascript:void(0);">退出</a></li>
	</ul>
</div>
<!--top end-->
<div class="main_left">
	<h2><i class="menu_icon fa fa-reorder"></i></h2>
	<ul class="menu">
		<!--今日数据-->
		<li>
			<i class="menu_icon fa fa-line-chart"></i>
			<a href="javascript:void(0);" data-id="daydata" data-href="today_data.jsp">今日数据</a>
		</li>
		<li>
			<i class="menu_icon fa fa-money"></i>
			<a href="javascript:void(0);" data-id="daydata" data-href="today_turnover.jsp">日营业额</a>
		</li>
		<li>
			<i class="menu_icon fa fa-car"></i>
			<a href="javascript:void(0);" data-id="daydata" data-href="today_washcar.jsp">日洗车量</a>
		</li>
		<!--门店数据-->
		<li>
			<i class="menu_icon fa fa-paperclip"></i>
			<a href="javascript:void(0);" data-id="store" data-href="today_storedata.jsp">今日实时数据</a>
		</li>
		<li>
			<i class="menu_icon fa fa-history"></i>
			<a href="javascript:void(0);" data-id="store" data-href="before_storedata.jsp">门店往期数据</a>
		</li>
		<li>
			<i class="menu_icon fa fa-sort-amount-desc"></i>
			<a href="javascript:void(0);" data-id="store" data-href="score_sort.jsp">门店评分排行</a>
		</li>
		<!--评论-->
		<li>
			<i class="menu_icon fa fa-commenting-o"></i>
			<a href="javascript:void(0);" data-id="comment" data-href="Comment.jsp">门店全部评价</a>
		</li>
		<li>
			<i class="menu_icon fa fa-thumbs-o-up"></i>
			<a href="javascript:void(0);" data-id="comment" data-href="Comment.jsp">门店好评</a>
		</li>
		<li>
			<i class="menu_icon fa fa-thumbs-o-down"></i>
			<a href="javascript:void(0);" data-id="comment" data-href="Comment.jsp">门店差评</a>
		</li>
	</ul>
</div>
<!--left end-->
<div class="main_right">
	<div class="loading">
		<div class="spinner">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
		<p>加载中，请稍后</p>
	</div>
	<iframe src="" name="cont_box" frameborder="0" width="100%" height="100%" seamless></iframe>
</div>
<!--desktop end-->
<!--javascript include-->
<script src="../js/jquery-2.2.1.min.js"></script>
<script src="../js/tipSuppliers.js"></script>
<script src="../js/bootstrap-datepicker.js"></script>
<script>
	$("iframe[name='cont_box']").on("load",function(){
		$(".loading").hide();
		setTimeout(function(){$("iframe[name='cont_box']").css("opacity","1");},500);
	});
	jQuery("body").jrdek({Mtop:".header",Mleft:".main_left",Mright:".main_right",foldCell:".main_left h2"});
	$(function(){
		$(".loading").hide();
		setTimeout(function(){$("iframe[name='cont_box']").css("opacity","1");},500);
		$(".nav li:first").trigger("click");
	});
</script>
</body>
</html>