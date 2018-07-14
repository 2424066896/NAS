<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>出入库记录</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>出入库记录</h2>
			<form action="#" method="post">
				<div class="search_box clearfix">
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
					<select class="f_left" name="history">
						<option value="1">全部记录</option>
						<option value="2">入库记录</option>
						<option value="3">出库记录</option>
					</select>
					<input type="submit" value="搜索" class="btn blue_btn"/>
				</div>
			</form>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>消耗品</th>
						<th>出入库记录</th>
						<th>出入库时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>125639742</td>
						<td>2017-03-09</td>
					</tr>
					<tr>
						<td>2</td>
						<td>89542233</td>
						<td>2017-03-09</td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableAas:[ 0,"desc"]});
			});
		</script>
	</body>
</html>
