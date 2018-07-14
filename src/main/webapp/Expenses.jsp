<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>消耗品管理</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>消耗品管理</h2>
			<div class="search_box clearfix">
				<button type="button" class="btn blue_btn add_expen">添加消耗品</button>
			</div>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>消耗品</th>
						<th>库存数量</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行入库或出库时该条数据的唯一标识-->
						<td>玻璃水</td>
						<td>100</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_info sign_in">
								<i class="fa fa-sign-in"></i>
								<span>入库</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del sign_out">
								<i class="fa fa-sign-out"></i>
								<span>出库</span>
							</a>
						</td>
					</tr>
					<tr id="2">
						<td>毛巾</td>
						<td>9999</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_info sign_in">
								<i class="fa fa-sign-in"></i>
								<span>入库</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del sign_out">
								<i class="fa fa-sign-out"></i>
								<span>出库</span>
							</a>
						</td>
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
				$("body").other({tableId:"#table_box",tableAas:[ 0,"desc"]});
				$("body").tipWindow({method:"edit",type:"form",Class:".sign_in",even:"click",tipTit:"消耗品入库",Twidth:"400",Theight:"200",editUrl:"sign_In.jsp"});//editUrl 消耗品入库请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".sign_out",even:"click",tipTit:"消耗品出库",Twidth:"400",Theight:"200",editUrl:"sign_Out.jsp"});//editUrl 消耗品出库请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".add_expen",even:"click",tipTit:"添加消耗品",Twidth:"400",Theight:"220",editUrl:"add_Expenses.html"});//editUrl 添加消耗品请求地址
			});
		</script>
	</body>
</html>
