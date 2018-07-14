<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>员工业绩</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<form action="#" method="post" id="record_form">
				<div class="search_box clearfix" style="padding-top:20px;">
					<div class="staff_info clearfix">
						<label>当前员工：</label>
						<span class="f_left">张三</span>
						<label>总提成：</label>
						<span class="f_left"><cite>1966666</cite>元</span>
					</div>
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
					<input type="button" value="搜索" class="btn blue_btn submit"/>
					<input type="button" value="导出员工业绩" class="btn btn_info"/>
				</div>
			</form>
			<div class="cont_box">
				<ul class="tab_tit clearfix">
					<li>施工业绩</li>
					<li>销售业绩</li>
					<li>储值卡业绩</li>
					<li>年卡业绩</li>
				</ul>
				<dl class="tab_conbox">
					<!--施工业绩-->
					<dd>
						<div class="achiev">施工总提成：<span>899999元</span></div>
						<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
							<thead>
								<tr>
									<th>订单号</th>
									<th>服务项目</th>
									<th>提成</th>
									<th>服务收费</th>
									<th>会员</th>
									<th>支付方式</th>
									<th>时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10000001</td>
									<td>打蜡</td>
									<td>6.00</td>
									<td>120.00</td>
									<td>18653624789</td>
									<td>现金</td>
									<td>2017-03-06</td>
								</tr>
								<tr>
									<td>10000001</td>
									<td>打蜡二</td>
									<td>6.00</td>
									<td>120.00</td>
									<td>18653624789</td>
									<td>年卡</td>
									<td>2017-03-08</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--销售业绩-->
					<dd>
						<div class="achiev">销售总提成：<span>899999元</span></div>
						<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
							<thead>
								<tr>
									<th>订单号</th>
									<th>服务项目</th>
									<th>提成</th>
									<th>服务收费</th>
									<th>时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10000001</td>
									<td>打蜡</td>
									<td>6.00</td>
									<td>120.00</td>
									<td>2017-03-06</td>
								</tr>
								<tr>
									<td>10000001</td>
									<td>打蜡二</td>
									<td>6.00</td>
									<td>120.00</td>
									<td>2017-03-08</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--储值卡业绩-->
					<dd>
						<div class="achiev">储值卡总提成：<span>998元</span></div>
						<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
							<thead>
								<tr>
									<th>会员</th>
									<th>卡种</th>
									<th>充值类型</th>
									<th>提成</th>
									<th>卡价值</th>
									<th>时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>18653626666</td>
									<td>都市储值卡</td>
									<td>充值</td>
									<td>120.00</td>
									<td>200.00</td>
									<td>2017-03-06</td>
								</tr>
								<tr>
									<td>18653624789</td>
									<td>洗车储值卡</td>
									<td>充值</td>
									<td>120.00</td>
									<td>8000.00</td>
									<td>2017-03-08</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--年卡业绩-->
					<dd>
						<div class="achiev">年卡总提成：<span>899999元</span></div>
						<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
							<thead>
								<tr>
									<th>会员</th>
									<th>提成</th>
									<th>充值数量</th>
									<th>时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>18653624125</td>
									<td>20.00</td>
									<td>2000.00</td>
									<td>2017-03-06</td>
								</tr>
								<tr>
									<td>13838384568</td>
									<td>5.00</td>
									<td>50.00</td>
									<td>2017-03-08</td>
								</tr>
							</tbody>
						</table>
					</dd>
				</dl>
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
				$.jqtab(".tab_tit",".tab_conbox","click");
				$(".submit").click(function(){
					$.ajax({
						type:"post",
						url:"search_Staff.html",
						data:{},
						success:function(data){
							$(".tab_conbox").remove();
							$(".cont_box").append(data);
							$.jqtab(".tab_tit",".tab_conbox","click");
							
						},
						error:function(data){
							alert(data);
						}
					});
				});
			});
		</script>
	</body>
</html>
