<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>新增售后</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>新增售后</h2>
			<form action="#" method="post">
				<ul class="addpro_box clearfix" style="border-bottom:1px dashed #ddd;padding:0 20px;margin-bottom:10px;">
					<li>
						<label class="f_left">搜索会员：</label>
						<input type="search" placeholder="请输入手机号/车牌号/姓名" class="f_left search_input"/>
						<input type="submit" value="搜索" class="btn blue_btn"/>
					</li>
				</ul>
			</form>
			<div class="cont_box" style="display:none;">
				<form action="#" method="post" id="aftersales_form">
					<ul class="addpro_box">
						<li>
							<label>会员爱车：</label>
							<div class="sales_radio f_left">
								<div class="car_list clearfix">
									<span>晋A12345</span>
									<span>行驶里程：<cite>1264</cite></span>
									<span>2019-03-16</span>
									<div class="radio_box">
										<i class="fa fa-circle-thin fa-1x"></i>
										<input type="radio" name="car_id" class="input_radio" required data-msg-required="请选择爱车"/>
										<span>选择</span>
									</div>
								</div>
								<div class="car_list clearfix">
									<span>晋A12345</span>
									<span>行驶里程：<cite>1264</cite></span>
									<span>2019-03-16</span>
									<div class="radio_box">
										<i class="fa fa-circle-thin fa-1x"></i>
										<input type="radio" name="car_id" class="input_radio"/>
										<span>选择</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<label>服务项目：</label>
							<select name="service_id" required data-msg-required="服务项目不能为空">
								<option value="">请选择服务项目</option>
								<option value="1">保养</option>
								<option value="2">维修</option>
							<select>
						</li>
						<li>
							<label>价格：</label>
							<input type="text" placeholder="请输入服务价格" name="pricein" required data-rule-pricein="true" data-msg-required="服务价格不能为空"/>
						</li>
						<li>
							<label>订单号：</label>
							<input type="text" placeholder="请输入订单号" name="procode" required data-rule-procode="true" data-msg-required="订单号不能为空"/>
						</li>
						<li>
							<label>备注：</label>
							<textarea rows="3" placeholder="请输入备注信息" name="remark"></textarea>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="新增售后" class="btn blue_btn submit"/>
					</div>
				</form>
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
				$("body").other({formId:"#aftersales_form",formUrl:"#"});//formUrl 表单请求地址
				var userInfo = $(".car_list").find("span").eq(0).text();
				if(userInfo!=""||userInfo!=""){
					$(".cont_box").show();
				}
			});
		</script>
	</body>
</html>
