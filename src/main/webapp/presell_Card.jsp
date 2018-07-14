<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>预售卡</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>添加预售卡</h2>
			<div class="cont_box">
				<form action="#" method="post" id="presell_form">
					<ul class="addpro_box">
						<li>
							<label>预售卡卡种：</label>
							<select name="presell" required data-msg-required="预售卡卡种不能为空">
								<option value="">请选择</option>
								<option value="1">储值卡</option>
								<option value="2">年卡</option>
							<select>
						</li>
						<li>
							<label>储值卡种类：</label>
							<select name="stored" required data-msg-required="储值卡种类不能为空">
								<option value="">请选择</option>
								<option value="1">储值卡种类一</option>
								<option value="2">储值卡种类二</option>
							<select>
						</li>
						<li>
							<label>年卡种类：</label>
							<select name="yearcard" required data-msg-required="年卡种类不能为空">
								<option value="">请选择</option>
								<option value="1">年卡种类一</option>
								<option value="2">年卡种类二</option>
							<select>
						</li>
						<li>
							<label>卡号：</label>
							<input type="text" placeholder="请输入预售卡卡号" name="sellcard" required data-rule-sellcard="true" data-msg-required="预售卡卡号不能为空"/>
						</li>
						<li>
							<label>充值金额：</label>
							<input type="text" name="pricein" readonly="readonly"/>
						</li>
						<li>
							<label>是否支付：</label>
							<div class="radio_box">
								<i class="fa fa-check-circle fa-1x"></i>
								<input type="radio" name="pay" class="input_radio" checked="checked"/><span>已支付</span>
							</div>
							<div class="radio_box">
								<i class="fa fa-circle-thin fa-1x"></i>
								<input type="radio" name="pay" class="input_radio"/><span>未支付（送客户）</span>
							</div>
						</li>
						<li>
							<label>销售：</label>
							<select name="staff">
								<option value="">请选择</option>
								<option value="1">张三</option>
								<option value="2">李四</option>
							<select>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="添加预售卡" class="btn blue_btn submit"/>
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
				$("body").other({formId:"#presell_form",formUrl:"#"});//formUrl 表单请求地址
				//卡种显示隐藏
				$("select[name='stored']").parent().hide();
				$("select[name='yearcard']").parent().hide();
				$("select[name='presell']").change(function(){
					var now = $(this).val();
					if(now == "1"){
						$("select[name='stored']").prop("disabled",false).parent().show();
						$("select[name='yearcard']").prop("disabled",true).parent().hide();
					}else if(now == "2"){
						$("select[name='yearcard']").prop("disabled",false).parent().show();
						$("select[name='stored']").prop("disabled",true).parent().hide();
					}else{
						$("select[name='yearcard']").parent().hide();
						$("select[name='stored']").parent().hide();
					}
				});
			});
		</script>
	</body>
</html>
