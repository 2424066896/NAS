<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>售后列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>售后列表</h2>
			<form action="#" method="post" id="order_shform">
				<div class="search_box clearfix">
					<input type="text" class="f_left" name="order_code" placeholder="输入手机号或车牌号查询" style="margin-right:15px;"/>
					<select name="service">
						<option value="">全部服务</option>
						<option value="1">普洗</option>
						<option value="2">急速精洗</option>
					</select>
					<label class="f_left">开始日期：</label>
					<div class="date_box">
						<input type="text" name="start" id="start_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<label class="f_left">结束日期：</label>
					<div class="date_box">
						<input type="text" name="end" id="end_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<input type="submit" value="搜索" class="btn blue_btn"/>
				</div>
			</form>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>会员名称</th>
						<th>会员手机号</th>
						<th>会员车牌号</th>
						<th>创建时间</th>
						<th>预约的服务</th>
						<th>价格</th>
						<th>备注</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>思密达面膜</td>
						<td>13834561346</td>
						<td>晋A12345</td>
						<td>2017-03-10</td>
						<td>维修</td>
						<td>8000.00</td>
						<td>测试</td>
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
				$("body").other({tableId:"#table_box",tableWrap:[0,1,6],tableAas:[3,"desc"],tableSearch:true});
			});
		</script>
	</body>
</html>
