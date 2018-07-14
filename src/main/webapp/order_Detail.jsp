<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>订单详情</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box">
				<!--订单号-->
				<div class="user_top">订单号：<span id="num">58D0963B32142</span></div>
				<!--订单商品-->
				<div class="user_top order_top">订单商品：</div>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>商品价格</th>
							<th>商品实际销售价格</th>
							<th>销售人员</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>太阳镜</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>张三</td>
						</tr>
					</tbody>
				</table>
				<!--订单服务-->
				<div class="user_top order_top">订单服务：</div>
				<table border="0" cellspacing="0" cellpadding="0" class="table pre_table">
					<thead>
						<tr>
							<th>服务名称</th>
							<th>服务价格</th>
							<th>服务实际支付价格</th>
							<th>施工人员</th>
							<th>销售人员</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>专业除胶（去除漆面沥青、虫尸、油渍顽固污渍）</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>李四</td>
							<td>张三</td>
						</tr>
						<tr>
							<td>精湛护理（天天新车、全球最专业的汽车精洗）--商务车</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>李四</td>
							<td>张三</td>
						</tr>
					</tbody>
				</table>
				<!--订单备注-->
				<div class="user_top order_top">订单备注：</div>
				<textarea class="order_note" readonly>订单被备注</textarea>
			</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/jquery.form.min.js"></script>
		<script src="js/other.js"></script>

		<script>
			$(function(){
				/*$("body").other({formId:"#editPro_form",formUrl:"#"});*/
				///formUrl 表单请求地址
			/*	$.getJSON("detail",callBack);
				function callBack(data) {
				    alert("aaaa")
					$("#num").html(data)
                }*/
			});
		</script>
	</body>
</html>