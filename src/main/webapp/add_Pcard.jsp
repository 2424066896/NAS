<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加储值卡</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="pcard_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>手机号：</label>
							<input type="text" value="18756324125" name="mobile" readonly/>
						</li>
						<li>
							<label>办理卡种：</label>
							<select name="pcard">
								<option value="1">白金储值卡</option>
								<option value="2">黄钻储值卡</option>
								<option value="3">红钻储值卡</option>
							<select>
						</li>
						<li>
							<label>充值金额：</label>
							<input type="text" value="0" name="money" readonly/>
						</li>
						<li>
							<label>销售人员：</label>
							<select name="staff">
								<option value="1">无销售</option>
								<option value="2">张三</option>
								<option value="3">李四</option>
							<select>
						</li>
						<li>
							<label>卡号：</label>
							<input type="text" placeholder="请输储值卡卡号" name="procode" required data-rule-procode="true" data-msg-required="储值卡卡号不能为空"/>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="添加储值卡" class="btn blue_btn submit"/>
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
		<script src="js/jquery.cxselect.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#pcard_form",formUrl:"#"});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，此页面不需要，已删除
				$("#carmodel").cxSelect({
					url: "js/carModel.json",
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
			});
		</script>
	</body>
</html>