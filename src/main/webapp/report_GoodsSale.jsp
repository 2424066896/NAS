<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>商品销售报表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<!--商品销售报表-->
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
					<thead>
						<tr>
							<th>车牌号</th>
							<th>商品名称</th>
							<th>数量</th>
							<th>金额</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>晋A12345</td>
							<td>玻璃水998型</td>
							<td>3</td>
							<td>800.00</td>
						</tr>
						<tr>
							<td>晋A23456</td>
							<td>刮雨器</td>
							<td>1</td>
							<td>10000.00</td>
						</tr>
						<tr>
							<td>晋A12345</td>
							<td>玻璃水</td>
							<td>2</td>
							<td>800.00</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[0,2],tableAas:[1,"desc"]});
			});
		</script>
	</body>
</html>
