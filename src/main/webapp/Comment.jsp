<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>本店评论</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>本店评论</h2>
			<div class="cont_box">
			<form action="#" method="post" id="staff_form">
				<div class="search_formbox clearfix">
					<button type="button" id="all" class="btn blue_btn curr">全部评论</button>
					<button type="button" id="paise" class="btn blue_btn">好评<sub>（100）</sub></button>
					<button type="button" id="bad" class="btn blue_btn">差评<sub>（10）</sub></button>
				</div>
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>订单号</th>
						<th>服务时间</th>
						<th>评价时间</th>
						<th>评价内容</th>
						<th>评分</th>
						<th>会员</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>125639742</td>
						<td>2017-02-09</td>
						<td>2017-03-09</td>
						<td><div class="comment_text">这里是评价内容</div></td>
						<td>5</td>
						<td>张三</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_info see_btn">
								<i class="fa fa-eye"></i>
								<span>查看</span>
							</a>
						</td>
					</tr>
					<tr id="2">
						<td>89542233</td>
						<td>2017-01-09</td>
						<td>2017-03-09</td>
						<td><div class="comment_text">这里是评价内容这里是评价内容这里是评价内容这里是评价内容这里是评价内容这里是评价内容</div></td>
						<td>4</td>
						<td>赵四</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_info see_btn">
								<i class="fa fa-eye"></i>
								<span>查看</span>
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
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[3,5,6],tableAas:[ 0,"desc"]});
				$("body").tipWindow({method:"edit",Class:".see_btn",even:"click",tipTit:"评价详情",Twidth:"700",Theight:"300",editUrl:"#"});//editUrl 编辑请求地址
				//评论筛选
				$(".search_formbox .btn").click(function(){
					var dataId = $(this).prop("id"),//评价等级id
						that = $(this);
					$.ajax({
						type:"post",
						url:"#",
						data:"id=dataId",
						success:function(data){
							that.addClass("curr").siblings().removeClass("curr");
						}
					});
				});
			});
		</script>
	</body>
</html>
