<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>欢迎页面</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
	</head>
	<body>
		<!--今日预约-->
		<div class="hello_box hello_order">
			<h2><span></span>今日预约</h2>
			<div class="hello_info">
				<table border="0" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>会员</th>
							<th>手机号</th>
							<th>车品牌型号</th>
							<th>车牌号</th>
							<th>预约时间</th>
							<th>预约服务</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>王元帅</td>
							<td>13209806560</td>
							<td>奥迪A6</td>
							<td>晋A12345</td>
							<td>14:30</td>
							<td>洗车</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--技术支持-->
		<div class="hello_box hello_opera">
			<h2><span></span>联系大灯泡科技</h2>
			<div class="hello_info">
				<ul>
					<li>
						<label>产品经理：</label>
						<span>王元帅</span>
						<span>13209806560</span>
						<span>QQ 602663099</span>
					</li>
					<li>
						<label>公司座机：</label>
						<span>0351-2967518</span>
					</li>
					<li>
						<label>公司地址：</label>
						<span>南中环山西软件园B座B区501 太原大灯泡信息科技</span>
					</li>
				</ul>
			</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath}/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/tipSuppliers.js"></script>
		<script>
			$(function(){
				function box(){
					var bodyH = $("body").height(),
						bodyW = $("body").width(),
						boxL = parseInt($(".hello_box").css("margin-left"));
					$(".hello_order").css({"width":(parseInt(bodyW)-(boxL*3)-505),"height":parseInt(bodyH)-70});
					$(".hello_opera").css({"width":"445px","height":(parseInt(bodyH)-210)/3});
				};
				box();
				$(window).resize(function(){
					box();
				});
			});
		</script>
	</body>
</html>
