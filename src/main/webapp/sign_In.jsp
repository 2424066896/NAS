<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>消耗品入库</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box signform_box">
				<form action="#" method="post" id="sign_form">
					<ul class="addpro_box">
						<li>
							<input type="text" placeholder="请输入入库数量" name="digits" required data-rule-digits="true" data-msg-required="入库数量不能为空，无库存请填“0”" data-msg-digits="请输入正整数"/>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="确定" class="btn blue_btn"/>
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
