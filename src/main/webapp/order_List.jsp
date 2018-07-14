<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>订单列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<style>
			p{
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>订单列表</h2>
			<form action="querylist" method="" id="order_shform">
				<div class="search_box clearfix">
					<input type="text" class="f_left" name="order_code" value="${param.order_code}" placeholder="输入订单号查询" style="margin-right:15px;"/>
					<label class="f_left">开始日期：</label>
					<div class="date_box">
						<input type="text" name="start" id="start_date" value="${param.start}" readonly/>
						<i class="fa fa-calendar"></i>
					</div>
					<label class="f_left">结束日期：</label>
					<div class="date_box">
						<input type="text" name="end" id="end_date" value="${param.end}" readonly/>
						<input type="hidden" name="pageNo" id="pageNo" value="" />
						<i class="fa fa-calendar"></i>
					</div>
					<input type="button" value="搜索" onclick="query()" class=""/>
				</div>
			</form>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>订单号</th>
							<th>金额</th>
							<th>卡类型</th>
							<th>客户名字</th>
							<th>手机号</th>
							<th>支付状态</th>
							<th>开单日期</th>
							<th width="200">操作</th>
						</tr>
					</thead>
					<tbody>

					<c:forEach items="${page.list}" var="order">
						<tr id="1">
							<td>${order.orderNum}</td>
							<td>${order.orderPrice}</td>
							<td>${order.payType}</td>
							<td>${order.custom.name}</td>
							<td>${order.custom.phone}</td>
							<td>${order.orderState}</td>
							<td>${order.orderDate}</td>
							<td>
								<a href="javascript:void(0);" class="table_btn table_info detail_btn">
									<i class="fa fa-eye"></i>
									<span>订单详情</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_edit edit_btn">
									<i class="fa fa-edit"></i>
									<span>编辑订单</span>
								</a>
								<a href="javascript:void(0);" class="table_btn table_del del_btn">
									<i class="fa fa-recycle"></i>
									<span>退单</span>
								</a>
							</td>
						</tr>
				</c:forEach>
				</tbody>
			</table>

				<p>
					<c:if test="${page!=null}">
						<a href="javascript:index(1)" class="first">首页</a>&nbsp;&nbsp;
						<c:if test="${page.pageNo!=1}">
							<a href="javascript:pre(${page.pageNo-1})" class="pre">上一页</a>&nbsp;&nbsp;
						</c:if>

						<c:if test="${page.pageNo!=page.pageTotalCount}">
							<a href="javascript:next(${page.pageNo+1})" class="next">下一页</a>&nbsp;&nbsp;
						</c:if>

						<a href="javascript:last(${page.pageTotalCount})" class="last">末页</a>&nbsp;&nbsp;

						第<span class="a">${page.pageNo}</span>页/共<span class="b">${page.pageTotalCount}</span>页
					</c:if>
				</p>

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
				$("body").other({tableId:"#table_box",tableWrap:[0,1,2,3,4,7,8],tableAas:[6,"desc"]});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",deleteTxt:"确认要退单吗？",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 退单请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".detail_btn",even:"click",tipTit:"订单详情",Twidth:"800",Theight:"600",editUrl:"order_Detail.jsp"});//editUrl 编辑请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"编辑订单",Twidth:"800",Theight:"600",editUrl:"order_edit.jsp"});//editUrl 编辑请求地址
				//订单搜索
				$(".search").click(function(){
					var data = {"startDate":$("#order_shform").find("input[name='start']").val(),"endDate":$("#order_shform").find("input[name='end']").val(),"orderId":$("#order_shform").find("input[name='order_code']").val()};
					$.ajax({
						type:"post",
						url:"search_Order.jsp",
						data:data,
						success:function(data){
							$(".table").remove();
							$(".cont_box").append(data);
							$("body").other({tableId:"#table_box",tableWrap:[0,1,2,3,4,7,8],tableAas:[6,"desc"]});
							$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",deleteTxt:"确认要退单吗？",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 退单请求地址
							$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"订单详情",Twidth:"800",Theight:"600",editUrl:"order_Detail.jsp"});//editUrl 编辑请求地址
						},
						error:function(data){
							alert(data);
						}
					});
				});



			});

            function query() {
                $("#order_shform").submit()
            }


            function index(pageNo) {
                $("#pageNo").val(pageNo)
                $("#order_shform").submit()
            }


            function pre(pageNo) {
                $("#pageNo").val(pageNo)
                $("#order_shform").submit()
            }

            function next(pageNo) {
                $("#pageNo").val(pageNo)
                $("#order_shform").submit()
            }

            function last(pageNo) {
                $("#pageNo").val(pageNo)
                $("#order_shform").submit()
            }

		</script>
	</body>
</html>
