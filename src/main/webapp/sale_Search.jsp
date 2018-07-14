<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>销售报表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>销售报表</h2>
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
					<input type="button" value="导出销售报表" class="btn btn_info">
				</div>
			</form>
			<div class="cont_box" style="border-top:1px dashed #ddd;">
				<p class="business_tit">财务报表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>现金</th>
							<th>微信</th>
							<th>刷卡</th>
							<th>邮政</th>
							<th>总计</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span class="table_link see_nocard" title="点击查看详情">300.00</span></td>
							<td>2000.00</td>
							<td>200.00</td>
							<td>100.00</td>
							<td>8000.00</td>
						</tr>
					</tbody>
				</table>
				<p class="business_tit">业务报表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>车辆台次</th>
							<th>非会员收入</th>
							<th>套餐卡收入（保养套餐卡）</th>
							<th>储值卡</th>
							<th>年卡</th>
							<th>会员消费</th>
							<th>售后收入</th>
							<th>会员维修收入</th>
							<th>保险收入</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>300</td>
							<td><span class="table_link see_card" title="点击查看详情">300.00</span></td>
							<td>200.00</td>
							<td>100.00</td>
							<td>8000.00</td>
							<td>8000.00</td>
							<td>8000.00</td>
							<td><span class="table_link see_nocard" title="点击查看详情">800.00</span></td>
							<td>8000.00</td>
						</tr>
					</tbody>
				</table>
				<p class="business_tit">商品销售报表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>数量</th>
							<th>金额</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>刮雨器</td>
							<td>8000</td>
							<td>8000.00</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_info see_goods">
									<i class="fa fa-eye"></i>
									<span>查看详情</span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
				<p class="business_tit">商品库存报表</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>期初库存数</th>
							<th>当前库存数</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>刮雨器</td>
							<td>8000</td>
							<td>8000</td>
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
				//=====弹出窗设置
				function DelTipWidth(Twidth,Theight){
					$(".tip_box",Wparent).css({"width":Twidth+"px","height":Theight+"px","margin-top":-(Theight/2)+"px","margin-left":-(Twidth/2)+"px"});
					$(".tip_close",Wparent).on("click",Tipclose);
				}
				//=====关闭弹出窗
				function Tipclose(){
					$(".tip_box",Wparent).remove(); //移除新增的外层className
					$(".tip_bg",Wparent).remove(); //移除新增的背景className
				}
				//初始化
				var Wparent = window.parent.document,
					tipBg = "<div class='tip_bg'></div>",
					tipBox = "<div class='tip_box'></div>";
				function tipW(headTxt,linkHref){
					$("body",Wparent).append(tipBg);
					$("body",Wparent).append(tipBox);
					$(".tip_box",Wparent).prepend("<h2>"+headTxt+"<span class='tip_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox'></div>");
					$(".tip_tbox",Wparent).append("<iframe src='"+linkHref+"' frameborder='0' width='100%' height='100%' seamless></iframe>");
					DelTipWidth(800,520);
					var titH = $(".tip_box",Wparent).find("h2").outerHeight();
					$(".tip_tbox",Wparent).css("height",520 - titH);
				}
				//非卡类型
				$(".see_nocard").click(function(){
					var index = $(this.parentNode).prevAll().length,
						pTxt = $(this).parents("table").prev().text(),
						headTxt = pTxt+" - "+$(this).parents("tbody").prev().find("th").eq(index).text(),
						linkHref = "report_Nocard.html";
					tipW(headTxt,linkHref);
				});
				//卡类型
				$(".see_card").click(function(){
					var index = $(this.parentNode).prevAll().length,
						pTxt = $(this).parents("table").prev().text(),
						headTxt = pTxt+" - "+$(this).parents("tbody").prev().find("th").eq(index).text(),
						linkHref = "report_Card.html";
					tipW(headTxt,linkHref);
				});
				//商品销售报表
				$(".see_goods").click(function(){
					var headTxt = "商品销售报表",
						linkHref = "report_GoodsSale.html";
					tipW(headTxt,linkHref);
				});
			});
		</script>
	</body>
</html>
