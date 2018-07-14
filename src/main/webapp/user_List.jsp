<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>本店会员</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>本店会员</h2>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>手机号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>车辆总数</th>
						<th>储值卡</th>
						<th>年卡总数</th>
						<th>大礼包总数</th>
						<th>订单总数</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行查看该会员相关信息时，当前数据的唯一标识-->
						<td>17656984521</td>
						<td>张三</td>
						<td>男</td>
						<td>5</td>
						<td>1</td>
						<td>1</td>
						<td>3</td>
						<td>10</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit see_order">
								<i class="fa fa-eye"></i>
								<span>查看订单</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_info edit_btn">
								<i class="fa fa-eye"></i>
								<span>查看详情</span>
							</a>
						</td>
					</tr>
					<tr id="2"><!--此处id为进行查看该会员相关信息时，当前数据的唯一标识-->
						<td>13686563245</td>
						<td>王五</td>
						<td>女</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td>3</td>
						<td>2</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit see_order">
								<i class="fa fa-eye"></i>
								<span>查看订单</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_info edit_btn">
								<i class="fa fa-eye"></i>
								<span>查看详情</span>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,2,8],tableAas:[ 0,"desc"],tableSearch:true});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"会员详情",Twidth:"1200",Theight:"800",editUrl:"user_Detail.html"});//editUrl 编辑请求地址
				//查看当前会员的订单
				$(".see_order").click(function(){
					var Wparent = window.parent.document,
						dataId = $(this).parents("tr").prop("id");
					$.ajax({
						type:"post",
						url:"order_List.html",
						data:{"id":dataId},
						success:function(data){
							$("body",Wparent).find(".nav li p[data-id='order']").trigger("click");
							$("body",Wparent).find("iframe").prop("src","order_List.html");
						}
					});
				});
			});
		</script>
	</body>
</html>
