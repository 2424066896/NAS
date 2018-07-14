<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>业绩查询</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>业绩查询</h2>
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
					<input type="submit" value="搜索" class="btn blue_btn"/>
					<input type="button" value="导出门店业绩" class="btn btn_info">
				</div>
			</form>
			<div class="cont_box" style="border-top:1px dashed #ddd;">
				<p class="business_tit">营业额详情表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table business_table">
					<tbody>
						<tr>
							<td>充值收入</td>
							<td>5800</td>
						</tr>
						<tr>
							<td>非会员收入</td>
							<td>2060</td>
						</tr>
						<tr>
							<td>大礼包收入</td>
							<td>0</td>
						</tr>
						<tr>
							<td>营业总额</td>
							<td>7860</td>
						</tr>
					</tbody>
				</table>
				<p class="business_tit">营业额说明</p>
				<ul class="business_info">
					<li>营业总额 = 充值收入 + 非会员收入 + 大礼包收入</li>
					<li>充值收入（<span>5800</span>） = 储值卡收入（<span>3800</span>） + 年卡收入（<span>2000</span>）</li>
					<li>储值卡消费总额：<span>2999</span> 元</li>
					<li>年卡消费总次数：<span>0</span> 次</li>
					<li>年卡开卡总数：<span>1</span> 张</li>
				</ul>
				<p class="business_tit">非会员收入详情表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th class="slash">
								<div class="slash_line">
									
								</div>
							</th>
							<th>现金</th>
							<th>微信</th>
							<th>刷卡</th>
							<th>体验卡</th>
							<th>总计</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>消费金额</td>
							<td>2000.00</td>
							<td>200.00</td>
							<td>100.00</td>
							<td>8000.00</td>
							<td>10300.00</td>
						</tr>
						<tr>
							<td>消费次数</td>
							<td>1</td>
							<td>2</td>
							<td>1</td>
							<td>10</td>
							<td>15</td>
						</tr>
					</tbody>
				</table>
				<p class="business_tit">储值卡详情表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table business_table">
					<tbody>
						<tr>
							<td>都市储值卡</td>
							<td>1</td>
						</tr>
						<tr>
							<td>白金储值卡</td>
							<td>5</td>
						</tr>
						<tr>
							<td>红钻储值卡</td>
							<td>1</td>
						</tr>
						<tr>
							<td>总计</td>
							<td>7</td>
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
				var tdW = $(".slash").width(),
					tdH = $(".slash").height();
				$(".slash_line").css({"border-left-width":parseInt(tdW),"border-top-width":parseInt(tdH)});
			});
		</script>
	</body>
</html>
