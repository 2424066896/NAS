<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加消耗品</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="sign_form">
					<ul class="addpro_box">
						<li>
							<label>消耗品名称：</label>
							<input type="text" placeholder="请输入消耗品名称" name="proname" required data-rule-proname="true" data-msg-required="消耗品名称不能为空" data-msg-proname="请输入正确的消耗品名称"/>
						</li>
						<li>
							<label>消耗品数量：</label>
							<input type="text" placeholder="请输消耗品数量" name="digits" required data-rule-digits="true" data-msg-required="消耗品数量不能为空" data-msg-digits="请输入正整数"/>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="确定" class="btn blue_btn submit"/>
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
				$("body").other({formId:"#sign_form",formUrl:"#"});//formUrl 表单请求地址
			});
		</script>
	</body>
</html>
