<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>开单添加/编辑爱车</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="order_addcar">
					<ul class="addpro_box adduser_box">
						<li>
							<label>车牌号：</label>
							<input type="text" placeholder="请输入车牌号码" name="isCarNo" required data-rule-isCarNo="true" data-msg-required="车牌号码不能为空"/>
						</li>
						<li>
							<label>行驶里程：</label>
							<input type="text" placeholder="请输入行驶里程" name="mileage" required data-rule-mileage="true" data-msg-required="行驶里程不能为空"/>
						</li>
						<li>
							<label>保险到期日：</label>
							<input type="text" class="choose_date" placeholder="请选择保险到期日" name="chdate" readonly required data-msg-required="保险到期日不能为空"/>
						</li>
						<li>
							<label>车品牌型号：</label>
							<div class="select_group" id="carmodel">
								<select name="carbrand" class="carbrand" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodela" class="carmodela" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodelb" class="carmodelb" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodelc" class="carmodelc" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
							</div>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="确认保存" class="btn blue_btn"/>
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
				var Wparent = window.parent.document;
				function validform(){
					return $("#order_addcar").validate({
								errorElement:"div",
								errorPlacement:function(error,element){
									if(element.parent()[0].className == "radio_box"){
										error.appendTo(element.parent().parent());
									}else{
										error.appendTo(element.parent());
									}
								}
							});
				}
				$(validform());
				$("#carmodel").cxSelect({
					url: "js/carModel.json",
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
				$(".btn").click(function(){
					if(validform().form()) {
						$.ajax({
							type:"post",
							url:"#",
							data:$("#order_addcar").serialize(),
							success:function(result){
								var result = {"state":1,"carModels":"蛋蛋车","carCode":"晋A00000","Mileage":"156"};//测试数据，请注意删除
								if(result.state == 1){
									var addText = $("body",Wparent).contents().find(".tip_tbox").prev().text();
									if(addText == "添加爱车"){
										$("iframe[name='cont_box']",Wparent).contents().find(".car_row ul").append("<li><cite>"+result.carModels+"</cite><cite class='plate_code'>车牌号：<em>"+result.carCode+"</em></cite><cite>行驶里程：<em class='mileage'>"+result.Mileage+"</em>公里<input type='hidden' value='1'></cite><span class='table_btn table_info'>更新行驶里程</span><span class='table_btn table_link edit_car'>编辑爱车</span><span class='table_btn table_warning f_right choose_car'>选择爱车</span></li>");
									}else{
										var num= $.getUrlParam("index");
										$("iframe[name='cont_box']",Wparent).contents().find(".car_row li").eq(num).html("<cite>"+result.carModels+"</cite><cite class='plate_code'>车牌号：<em>"+result.carCode+"</em></cite><cite>行驶里程：<em class='mileage'>"+result.Mileage+"</em>公里<input type='hidden' value='1'></cite><span class='table_btn table_info'>更新行驶里程</span><span class='table_btn table_link edit_car'>编辑爱车</span><span class='table_btn table_warning f_right choose_car'>选择爱车</span>");
									}
									$(".tip_box",Wparent).remove();
									$(".tip_bg",Wparent).remove();
									$.layerTip("success","保存成功");
								}else{
									$.layerTip("error","车牌号已存在");
								}
								
							},
							error:function(){
								$(".tip_box",Wparent).remove();
								$(".tip_bg",Wparent).remove();
								$.layerTip("error","保存失败，请重试");
							}
						});
					}else {
						//校验不通过，什么都不用做，校验信息已经正常显示在表单上
					}
				});
			});
		</script>
	</body>
</html>