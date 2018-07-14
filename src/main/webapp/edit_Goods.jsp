<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>编辑商品</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="editPro_form">
					<ul class="addpro_box">
						<li>
							<label>商品名称：</label>
							<input type="text" placeholder="请输入商品名称" name="proname" required data-rule-proname="true" data-msg-required="商品编码不能为空"/>
						</li>
						<li>
							<label>售价：</label>
							<input type="text" placeholder="请输入商品售价" name="pricein" required data-rule-pricein="true" data-msg-required="商品售价不能为空"/>
						</li>
						<li>
							<label>销售提成：</label>
							<input type="text" placeholder="请输入销售提成" id="sale" name="pricein" required data-rule-pricein="true" data-msg-required="销售提成不能为空"/>
						</li>
						<li>
							<label>库存：</label>
							<input type="text" placeholder="请输入商品库存" name="digits" required data-rule-digits="true" data-msg-required="商品库存不能为空，无库存请填“0”" data-msg-digits="请输入正整数"/>
						</li>
						<li>
							<label>状态：</label>
							<select name="state">
								<option value="1">下架</option>
								<option value="2">上架</option>
							<select>
						</li>
						<li>
							<label>所属分类：</label>
							<select name="classfiy" required data-msg-required="所属分类不能为空">
								<option value="">请选择所属分类</option>
								<option value="1">商品分类一</option>
								<option value="2">商品分类二</option>
								<option value="3">商品分类三</option>
							<select>
						</li>
						<li>
							<label>商品描述：</label>
							<textarea rows="3" name="detail"></textarea>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="保存修改" class="btn blue_btn submit"/>
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
				$("body").other({formId:"#editPro_form",formUrl:"#"});//formUrl 表单请求地址
			});
		</script>
	</body>
</html>