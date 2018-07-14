<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>本店预约列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>本店预约列表</h2>
			<form action="#" method="post" id="order_shform">
				<div class="search_box clearfix">
					<input type="text" class="f_left" name="order_code" placeholder="输入手机号或车牌号查询" style="margin-right:15px;"/>
					<select name="service_id">
						<option value="">全部服务</option>
						<option value="1">普洗</option>
						<option value="2">急速精洗</option>
					</select>
					<select name="state">
						<option value="">全部状态</option>
						<option value="1">已预约</option>
						<option value="2">已服务</option>
					</select>
					<label class="f_left">开始日期：</label>
					<div class="date_box">
						<input type="text" name="start" id="start_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<label class="f_left">结束日期：</label>
					<div class="date_box">
						<input type="text" name="end" id="end_date" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<input type="submit" value="搜索" class="btn blue_btn"/>
				</div>
			</form>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>预约用户</th>
						<th>手机号</th>
						<th>预约车辆</th>
						<th>预约服务</th>
						<th>预约时间</th>
						<th>状态</th>
						<th>提交预约时间</th>
						<th>备注</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>陈少群</td>
						<td>13623514486</td>
						<td>晋AJ583K</td>
						<td>普洗</td>
						<td>2017-03-31</td>
						<td>已服务</td>
						<td>2017-03-31</td>
						<td>2017-3-31 14:00:00 已服务</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑</span>
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
				$("body").other({tableId:"#table_box",tableWrap:[0,7,8],tableAas:[4,"desc"],tableSearch:true});
				//实际应用请使用下面的tipWindow方法，这里直接删除
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑预约详情",Twidth:"800",Theight:"600",editUrl:"appoint_Detail.html"});//editUrl 编辑请求地址
				/**
				 实际应用中请使用这里
				 $(".edit_btn").off("click");
				 $(".edit_btn").on("click",function(){
				 	var dataId = {"id":$(this).parents("tr").prop("id")};
				 	$("body").tipWindow({method:"edit",type:"form",dataId:dataId,tipTit:"编辑预约详情",Twidth:"800",Theight:"600",editUrl:"appoint_Detail.html"});//editUrl 编辑请求地址
				 });
				 * */
			});
		</script>
	</body>
</html>
