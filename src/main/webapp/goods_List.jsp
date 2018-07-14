<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>商品列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>商品列表</h2>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>商品名称</th>
						<th>所属分类</th>
						<th>价格</th>
						<th>库存</th>
						<th>状态</th>
						<th>添加时间</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>思密达面膜</td>
						<td>化妆品</td>
						<td>100.00</td>
						<td>8000</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_warning up_shelf">
								<i class="fa fa-arrow-up"></i>
								<span>上架</span>
							</a>
						</td>
						<td>2017-03-06</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del del_btn">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
							</a>
						</td>
					</tr>
					<tr id="2">
						<td>思密达面膜</td>
						<td>化妆品</td>
						<td>100.00</td>
						<td>8000</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_grey down_shelf">
								<i class="fa fa-arrow-down"></i>
								<span>下架</span>
							</a>
						</td>
						<td>2017-03-10</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
								<i class="fa fa-edit"></i>
								<span>编辑</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_del del_btn">
								<i class="fa fa-trash-o"></i>
								<span>删除</span>
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
				$("body").other({tableId:"#table_box",tableWrap:[0,1,6],tableAas:[ 5,"desc"],tableSearch:true});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"商品编辑",Twidth:"700",Theight:"600",editUrl:"edit_Goods.html"});//editUrl 编辑请求地址
				$("body").tipWindow({method:"Shelf",Twidth:"400",Theight:"180",shelfUrl:"#"});//shelfUrl 上下架请求地址
			});
		</script>
	</body>
</html>
