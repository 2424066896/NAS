<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加员工</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>添加员工</h2>
			<div class="cont_box">
				<form action="#" method="post" id="addstaff_form">
					<ul class="addpro_box">
						<li>
							<label>姓名：</label>
							<input type="text" placeholder="请输员工姓名" name="fullname" required data-rule-fullname="true" data-msg-required="员工姓名不能为空"/>
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" placeholder="请输入手机号" name="mobile" required data-rule-mobile="true" data-msg-required="手机号不能为空"/>
						</li>
						<li>
							<label>性别：</label>
							<div class="radio_box">
								<i class="fa fa-circle-thin fa-1x"></i>
								<input type="radio" name="sex" class="input_radio" required data-msg-required="性别不能为空"/><span>男</span>
							</div>
							<div class="radio_box">
								<i class="fa fa-circle-thin fa-1x"></i>
								<input type="radio" name="sex" class="input_radio"/><span>女</span>
							</div>
						</li>
						<li>
							<label>岗位：</label>
							<select name="post" required data-msg-required="所属岗位不能为空">
								<option value="">请选择所属岗位</option>
								<option value="1">店长</option>
								<option value="2">财务</option>
								<option value="3">洗车工</option>
							<select>
						</li>
						<li>
							<label>是否在岗：</label>
							<select name="state">
								<option value="1">在岗</option>
								<option value="2">离职</option>
							<select>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="添加员工" class="btn blue_btn"/>
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
				$("body").other({formId:"#addstaff_form",formUrl:"#"});//formUrl 表单请求地址
			});
		</script>
	</body>
</html>
