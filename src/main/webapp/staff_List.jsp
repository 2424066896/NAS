<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>员工列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>员工列表</h2>
			<div class="cont_box">
				<form action="#" method="post" id="staff_form">
					<div class="search_formbox clearfix">
						<button type="button" id="job" class="btn blue_btn curr">全部员工</button>
						<button type="button" id="quit" class="btn blue_btn">在职员工</button>
						<button type="button" id="all" class="btn blue_btn">离职员工</button>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
					<thead>
						<tr>
							<th>员工编号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>岗位</th>
							<th>电话</th>
							<th>录入时间</th>
							<th>状态</th>
							<th width="268">操作</th>
						</tr>
					</thead>
					<tbody>
						<tr id="1"><!--此处id为进行编辑或查看时该条数据的唯一标识-->
							<td>10000001</td>
							<td>张三</td>
							<td>男</td>
							<td>店长</td>
							<td>18653624789</td>
							<td>2017-03-06</td>
							<td>在岗</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
									<i class="fa fa-edit"></i>
									<span>编辑</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_info see_btn">
									<i class="fa fa-eye"></i>
									<span>查看业绩</span>
								</a>
							</td>
						</tr>
						<tr id="2">
							<td>10000002</td>
							<td>赵四</td>
							<td>女</td>
							<td>财务</td>
							<td>13666666666</td>
							<td>2017-03-06</td>
							<td>离职</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
									<i class="fa fa-edit"></i>
									<span>编辑</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_info see_btn">
									<i class="fa fa-eye"></i>
									<span>查看业绩</span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,7],tableAas:[ 0,"desc"],tableSearch:true});
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑员工信息",Twidth:"700",Theight:"460",editUrl:"edit_Staff.html"});//editUrl 编辑员工信息请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".see_btn",even:"click",tipTit:"员工业绩",Twidth:"998",Theight:"600",editUrl:"staff_Achievement.html"});//editUrl 员工业绩请求地址
				//员工筛选
				$(".search_formbox .btn").click(function(){
					var dataId = $(this).prop("id"),//员工状态id
						that = $(this);
					$.ajax({
						type:"post",
						url:"#",
						data:{"id":dataId},
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
			});
		</script>
	</body>
</html>
