<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加大礼包</title>
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
							<label>大礼包：</label>
							<select name="pcard">
								<option value="1">大礼包一</option>
								<option value="2">大礼包二</option>
								<option value="3">大礼包三</option>
							<select>
						</li>
						<li>
							<label>礼包详情：</label>
							<div class="f_left">
								<p>大礼包价格:2680</p>
								<p>大礼包有效期:366天</p>
								<p>活动截止日期:2037-02-10 23:59:59</p>
							</div>
						</li>
						<li>
							<label>礼包服务：</label>
							<div class="f_left">
								<p>精湛护理（天天新车、全球最专业的汽车精洗）免费次数:366</p>
								<p>打蜡（增加漆面的亮度）免费次数:366</p>
							</div>
						</li>
						<li>
							<label>绑定车牌号：</label>
							<select name="isCarNo">
								<option value="">请选择</option>
								<option value="1">晋A12345</option>
								<option value="2">晋B12345</option>
								<option value="3">晋C12345</option>
							<select>
						</li>
						<li>
							<label>销售人员：</label>
							<select name="staff">
								<option value="1">无销售</option>
								<option value="2">张三</option>
								<option value="3">李四</option>
							<select>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="添加大礼包" class="btn blue_btn submit"/>
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