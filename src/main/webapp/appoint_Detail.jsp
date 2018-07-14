<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>编辑预约详情</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="editSales_form">
					<ul class="addpro_box">
						<li>
							<label>预约用户：</label>
							<input type="text" name="proname" value="陈少群" readonly/>
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" name="phone" value="13623514486" readonly/>
						</li>
						<li>
							<label>预约车辆：</label>
							<input type="text" name="carcode" value="晋AJ583K" readonly/>
						</li>
						<li>
							<label>品牌型号：</label>
							<input type="text" name="model" value="进口奥迪" readonly/>
						</li>
						<li>
							<label>车辆指导价：</label>
							<input type="text" name="price" value="10000.00" readonly/>
						</li>
						<li>
							<label>预约服务：</label>
							<input type="text" name="serve" value="普洗" readonly/>
						</li>
						<li>
							<label>预约时间：</label>
							<input type="text" name="date" value="2017-03-31" readonly/>
						</li>
						<li>
							<label>提交预约时间：</label>
							<input type="text" name="subdate" value="2017-03-31" readonly/>
						</li>
						<li>
							<label>状态：</label>
							<select name="state">
								<option value="1">已服务</option>
								<option value="2">已取消</option>
							<select>
						</li>
						<li>
							<label>备注：</label>
							<textarea rows="3" name="detail">已经服务了么</textarea>
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
				$("body").other({formId:"#editSales_form",formUrl:"#"});//formUrl 表单请求地址
			});
		</script>
	</body>
</html>