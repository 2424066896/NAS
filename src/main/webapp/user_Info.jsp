<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>会员信息</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>会员信息</h2>
			<div class="search_box clearfix">
				<label class="f_left">搜索会员：</label>
				<input type="search" placeholder="请输入手机号/车牌号/姓名" class="f_left search_input"/>
				<input type="button" value="搜索" class="btn blue_btn search"/>
			</div>
			<div class="cont_box">
				<ul class="tab_tit clearfix">
					<li>会员基本信息</li>
					<li>爱车</li>
					<li>储值卡</li>
					<li>年卡</li>
					<li>大礼包</li>
					<li>消费记录</li>
					<li>积分记录</li>
				</ul>
				<dl class="tab_conbox">
					<!--会员基本信息-->
					<dd>
						<form action="#" method="post" id="edit_user">
							<div class="addpro_box clearfix">
								<label>姓名：</label>
								<input type="text" value="张三" name="fullname" required data-rule-fullname="true" data-msg-required="会员姓名不能为空"/>
							</div>
							<div class="addpro_box clearfix">
								<label>手机号：</label>
								<input type="text" value="18636542369" name="mobile" required data-rule-mobile="true" data-msg-required="会员手机号不能为空"/>
							</div>
							<div class="addpro_box clearfix">
								<label>所属门店：</label>
								<input type="text" name="fullname" value="太原火车站店" readonly/>
							</div>
							<div class="addpro_box learfix">
								<label>注册来源：</label>
								<input type="text" name="fullname" value="微信" readonly/>
							</div>
							<div class="probtn_box clearfix">
								<input type="button" value="保存修改" class="btn blue_btn submit">
							</div>
						</form>
					</dd>
					<!--爱车-->
					<dd>
						<div class="margin_tb clearfix">
							<button type="button" class="btn blue_btn add_car">添加爱车</button>
						</div>
						<!--爱车信息-->
						<div class="ucar_list">
							<h5>
								<span>爱车编号001</span>
								<a href="javascript:void(0);" class="edit_car">编辑车辆信息</a>
								<a href="javascript:void(0);" class="del_car">删除车辆</a>
							</h5>
							<table border="0" cellspacing="0" cellpadding="0" class="table">
								<tbody>
									<tr>
										<td>品牌</td>
										<td>宝马</td>
										<td>系列</td>
										<td>宝马（进口）</td>
									</tr>
									<tr>
										<td>型号</td>
										<td>宝马Z3</td>
										<td>发动机号</td>
										<td>568441312666</td>
									</tr>
									<tr>
										<td>车牌号</td>
										<td></td>
										<td>车架号</td>
										<td></td>
									</tr>
									<tr>
										<td>行驶证</td>
										<td></td>
										<td>年份</td>
										<td></td>
									</tr>
									<tr>
										<td>指导价</td>
										<td></td>
										<td>保险到期日</td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="ucar_list">
							<h5>
								<span>爱车编号002</span>
								<a href="javascript:void(0);" class="edit_car">编辑车辆信息</a>
								<a href="javascript:void(0);" class="del_car">删除车辆</a>
							</h5>
							<table border="0" cellspacing="0" cellpadding="0" class="table">
								<tbody>
									<tr>
										<td>品牌</td>
										<td>宝马</td>
										<td>系列</td>
										<td>宝马（进口）</td>
									</tr>
									<tr>
										<td>型号</td>
										<td>宝马Z3</td>
										<td>发动机号</td>
										<td>568441312666</td>
									</tr>
									<tr>
										<td>车牌号</td>
										<td></td>
										<td>车架号</td>
										<td></td>
									</tr>
									<tr>
										<td>行驶证</td>
										<td></td>
										<td>年份</td>
										<td></td>
									</tr>
									<tr>
										<td>指导价</td>
										<td></td>
										<td>保险到期日</td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</dd>
					<!--储值卡-->
					<dd>
						<!--当前储值卡为空时显示添加按钮-->
						<div class="margin_tb clearfix">
							<button type="button" class="btn blue_btn add_pcard">添加储值卡</button>
						</div>
						<table border="0" cellspacing="0" cellpadding="0" class="table">
							<thead>
								<tr>
									<th>用户手机号</th>
									<th>卡片ID</th>
									<th>卡片种类</th>
									<th>卡片余额</th>
									<th>卡片折扣</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr id="123"><!--这里id为卡片操作时需要-->
									<td>13666666666</td>
									<td>30</td>
									<td>黄钻储蓄卡</td>
									<td>3000</td>
									<td>8.9</td>
									<td>
										<a href="javascript:void(0);" class="table_btn table_edit upgrade_btn">
											<i class="fa fa-thumbs-up"></i>
											<span>卡片升级</span>
										</a>
										<a href="javascript:void(0);" class="table_btn table_info recharge_btn">
											<i class="fa fa-mail-forward"></i>
											<span>卡片充值</span>
										</a>
										<a href="javascript:void(0);" class="table_btn table_del del_btn">
											<i class="fa fa-trash-o"></i>
											<span>删除卡片</span>
										</a>
									</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--年卡-->
					<dd>
						<!--当前年为空时显示添加按钮-->
						<div class="margin_tb clearfix">
							<button type="button" class="btn blue_btn add_ycard">添加年卡</button>
						</div>
						<table border="0" cellspacing="0" cellpadding="0" class="table">
							<thead>
								<tr>
									<th>用户手机号</th>
									<th>用户姓名</th>
									<th>卡片额度</th>
									<th>绑定车牌号</th>
									<th>办理日期</th>
									<th>过期日期</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>13666666666</td>
									<td>张三</td>
									<td>2000</td>
									<td>晋A12345</td>
									<td>2017-03-01</td>
									<td>2017-05-31</td>
									<td>可用</td>
								</tr>
								<tr>
									<td>13888888888</td>
									<td>王五</td>
									<td>300000</td>
									<td>晋A66666</td>
									<td>2017-03-15</td>
									<td>2017-03-30</td>
									<td>已过期</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--大礼包-->
					<dd>
						<div class="margin_tb clearfix">
							<button type="button" class="btn blue_btn add_spree">添加大礼包</button>
						</div>
						<table border="0" cellspacing="0" cellpadding="0" class="table">
							<thead>
								<tr>
									<th>用户手机号</th>
									<th>大礼包</th>
									<th>大礼包价格</th>
									<th>办理日期</th>
									<th>过期日期</th>
									<th>大礼包详情</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>13666666666</td>
									<td>张三</td>
									<td>2000</td>
									<td>2017-03-01</td>
									<td>2017-05-31</td>
									<td>可用</td>
								</tr>
								<tr>
									<td>13888888888</td>
									<td>王五</td>
									<td>300000</td>
									<td>2017-03-15</td>
									<td>2017-03-30</td>
									<td>已过期</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--消费记录-->
					<dd>
						<table border="0" cellspacing="0" cellpadding="0" class="table">
							<thead>
								<tr>
									<th>订单号</th>
									<th>消费金额</th>
									<th>会员</th>
									<th>手机号</th>
									<th>支付</th>
									<th>状态</th>
									<th>开单日期</th>
									<th>订单备注</th>
									<th>所属门店</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>58C8F2EDCAD25</td>
									<td>2000</td>
									<td>张三</td>
									<td>13666666666</td>
									<td>会员</td>
									<td>已支付</td>
									<td>2017-05-31</td>
									<td>备注一下</td>
									<td>太原火车站店</td>
								</tr>
								<tr>
									<td>58C8F2EDCAD25</td>
									<td>2000</td>
									<td>张三</td>
									<td>13666666666</td>
									<td>会员</td>
									<td>已支付</td>
									<td>2017-05-31</td>
									<td>备注</td>
									<td>太原火车站店</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<!--积分记录-->
					<dd>
						<table border="0" cellspacing="0" cellpadding="0" class="table">
							<thead>
								<tr>
									<th>会员</th>
									<th>手机号</th>
									<th>原积分</th>
									<th>状态</th>
									<th>积分变动</th>
									<th>当前积分</th>
									<th>操作类型</th>
									<th>操作日期</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>张三</td>
									<td>13666666666</td>
									<td>2000</td>
									<td>增加</td>
									<td>800</td>
									<td>2800</td>
									<td>首次添加爱车</td>
									<td>2017-05-31</td>
								</tr>
								<tr>
									<td>张三</td>
									<td>13666666666</td>
									<td>1000</td>
									<td>增加</td>
									<td>1000</td>
									<td>2000</td>
									<td>绑定</td>
									<td>2017-05-31</td>
								</tr>
							</tbody>
						</table>
					</dd>
				</dl>
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
				$.jqtab(".tab_tit",".tab_conbox","click");
				var addCar = "",//添加爱车时所需id
					editCar = "",//添加爱车时所需id
					delCar = "",//添加爱车时所需id
					addYcard = "",//添加爱车时所需id
					addSpree = "",//添加爱车时所需id
					addPcard = "",//添加爱车时所需id
					delPcard = "";//添加爱车时所需id
				$("body").other({formId:"#edit_user",formUrl:"#"});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，此页面不需要，已删除
				$("body").tipWindow({method:"edit",type:"form",Class:".add_car",even:"click",dataId:addCar,tipTit:"添加爱车",Twidth:"700",Theight:"520",editUrl:"add_Car.html"});//editUrl 添加爱车请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_car",even:"click",dataId:editCar,tipTit:"编辑爱车",Twidth:"700",Theight:"520",editUrl:"edit_Car.html"});//editUrl 编辑爱车请求地址
				$("body").tipWindow({method:"delete",Class:".del_car",even:"click",dataId:delCar,Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除爱车请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".add_ycard",even:"click",dataId:addYcard,tipTit:"添加年卡",Twidth:"600",Theight:"400",editUrl:"add_Ycard.html"});//editUrl 添加年卡请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".add_spree",even:"click",dataId:addSpree,tipTit:"添加大礼包",Twidth:"600",Theight:"520",editUrl:"add_Spree.html"});//editUrl 添加大礼包请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".add_pcard",even:"click",dataId:addPcard,tipTit:"添加储值卡",Twidth:"600",Theight:"400",editUrl:"add_Pcard.html"});//editUrl 添加储值卡请求地址
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",dataId:delPcard,Theight:"180",delUrl:"#"});//delUrl 删除储值卡请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".upgrade_btn",even:"click",tipTit:"储值卡升级",Twidth:"600",Theight:"360",editUrl:"pcard_Upgrade.html"});//editUrl 储值卡升级请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".recharge_btn",even:"click",tipTit:"储值卡充值",Twidth:"600",Theight:"300",editUrl:"pcard_Recharge.html"});//editUrl 储值卡充值请求地址
				//查询会员获取信息
				var userId = "";//会员id
				$(".search").click(function(){
					$.ajax({
						type:"post",
						url:"#",
						data:{"id":userId},
						success:function(data){
							
						},
						error:function(data){
							alert("查询失败，请重试！");
						}
					});
				});
				
			});
		</script>
	</body>
</html>
		