<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>编辑订单</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

	</head>
	<body>
		<div class="main_box">
			<div class="cont_box">
				<!--订单号-->
				<div class="user_top">订单号：<span>58D0963B32143</span></div>
				<!--订单商品-->
				<div class="user_top order_top">订单商品：</div>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>商品价格</th>
							<th>商品实际销售价格</th>
							<th>销售人员</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>太阳镜</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>张三</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_del del_btn">
									<i class="fa fa-trash-o"></i>
									<span>删除</span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="clearfix" style="margin-top:20px;">
					<%--添加商品的表单--%>
					<script>
						function add() {
                           /* alert("add")*/
                        }
					</script>
					<input type="submit" value="添加商品" onclick="add()" class="btn line_btn">
				</div>
				<!--订单服务-->
				<div class="user_top order_top">订单服务：</div>
				<table border="0" cellspacing="0" cellpadding="0" class="table pre_table">
					<thead>
						<tr>
							<th>服务名称</th>
							<th>服务价格</th>
							<th>服务实际支付价格</th>
							<th>施工人员</th>
							<th>销售人员</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>专业除胶（去除漆面沥青、虫尸、油渍顽固污渍）</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>李四</td>
							<td>张三</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_del del_btn">
									<i class="fa fa-trash-o"></i>
									<span>删除</span>
								</a>
							</td>
						</tr>
						<tr>
							<td>精湛护理（天天新车、全球最专业的汽车精洗）--商务车</td>
							<td>100.00</td>
							<td>120.00</td>
							<td>李四</td>
							<td>张三</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_del del_btn">
									<i class="fa fa-trash-o"></i>
									<span>删除</span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="clearfix" style="margin-top:20px;">
					<input type="submit" value="添加服务" class="btn line_btn">
				</div>
				<!--订单备注-->
				<div class="user_top order_top">订单备注：</div>
				<textarea class="order_note">订单被备注123123</textarea>
				<div class="clearfix" style="margin-top:20px;">
					<input type="submit" value="确认保存" class="btn blue_btn total_btn">
				</div>
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
				tableShow();
				$(".del_btn").click(function(){
					if($(this).parents("tbody").find("tr").length<=1){
						$(this).parents(".table").prev().remove();
						$(this).parents(".table").remove();
					}else{
						$(this).parents("tr").remove();
					}
				});
			});
			function tableShow(){
				$(".table").each(function(){
					if($(this).find("tbody tr").length<=0){
						$(this).prev().remove();
						$(this).remove();
					}
				});
			}
		</script>
	</body>
</html>