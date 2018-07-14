<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>开单</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box new_order">
			<h2><span></span>开单</h2>
			<form action="#" method="post">
				<div class="search_box clearfix">
					<label class="f_left">搜索会员：</label>
					<input type="search" placeholder="请输入手机号/车牌号/姓名/卡号" class="f_left search_input"/>
					<input type="submit" value="搜索" class="btn blue_btn"/>
				</div>
			</form>
			<div class="cont_box">
				<!--会员信息-->
				<div class="norder_box user_have">
					<h2><span></span>会员信息</h2>
					<table border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td>会员姓名</td>
								<td>张三<input type="hidden" name="m_id" id="m_id" value="444"/></td><!--请在此传入会员的id-->
								<td>会员手机号</td>
								<td>18636541236</td>
								<td>会员注册时间</td>
								<td>2017-03-15</td>
							</tr>
							<tr>
								<td>储值卡</td>
								<td>金卡</td>
								<td>余额</td>
								<td style="color:#db4c4a;">50000.00</td>
								<td>折扣</td><td>7.50</td>
							</tr>
							<tr>
								<td>套餐卡</td>
							</tr>
							<!--套餐卡循环开始-->
							<tr class="special">
								<td>套餐卡一</td>
								<td>套餐卡绑定车</td><td>晋A12345</td>
								<td>到期时间</td><td>2017-08-15</td>
							</tr>
							<tr class="special">
								<td>套餐卡2</td>
								<td>套餐卡绑定车</td><td>晋A12345</td>
								<td>到期时间</td><td>2017-08-15</td>
							</tr>
							<!--套餐卡循环结束-->
							<tr>
								<td>年卡</td>
								<td><cite>1663588966366</cite>（卡号）</td>
								<td>年卡绑定车</td><td>晋A12345</td>
								<td>到期时间</td><td id="expire_time">2018-03-14</td>
							</tr>
							<tr>
								<td>用户爱车</td>
								<td colspan="6" class="car_row">
									<ul>
										<!--用户爱车循环开始-->
										<li class="clearfix">
											<cite>DB9 6.0L GT邦德限量版</cite>
											<cite class="plate_code">车牌号：<em>晋A12345</em></cite>
											<cite>行驶里程：<em class="mileage">1</em>公里<input type="hidden" value="123"/></cite>
											<span class="table_btn table_info">更新行驶里程</span>
											<span class="table_btn table_link edit_car">编辑爱车</span>
											<span class="table_btn table_warning f_right choose_car">选择爱车</span>
										</li>
										<!--用户爱车循环结束-->
										<li>
											<cite>阿斯顿·马丁</cite>
											<cite class="plate_code">车牌号：<em>晋A12345</em></cite>
											<cite>行驶里程：<em class="mileage">1</em>公里<input type="hidden"/></cite>
											<span class="table_btn table_info">更新行驶里程</span>
											<span class="table_btn table_link edit_car">编辑爱车</span>
											<span class="table_btn table_warning f_right choose_car">选择爱车</span>
										</li>
										<li>
											<cite>DB9 6.0L GT邦德限量版</cite>
											<cite class="plate_code">车牌号：<em>晋A12345</em></cite>
											<cite>行驶里程：<em class="mileage">1</em>公里<input type="hidden"/></cite>
											<span class="table_btn table_info">更新行驶里程</span>
											<span class="table_btn table_link edit_car">编辑爱车</span>
											<span class="table_btn table_warning f_right choose_car">选择爱车</span>
										</li>
									</ul>
									<div class="clearfix" style="padding:10px 8px;">
										<button type="button" class="btn blue_btn add_car">添加爱车</button>
									</div>
								</td>
							</tr>
							<tr>
								<td>会员可用服务</td>
								<td colspan="6" class="desk_row">
									<!--可用服务循环开始-->
									<p>套餐卡一</p>
									<ul>
										<li>玻璃素镀膜（高亮度，高硬度的镀膜）</li>
										<li>喷晶镀膜（比封釉更经济实惠的镀膜，快速施工）</li>
										<li>镀膜维护（膜层添加、修复还原、激活膜层表面）</li>
									</ul>
									<!--可用服务循环结束-->
									<p>套餐卡2</p>
									<ul>
										<li>精湛护理（天天新车、全球最专业的汽车精洗）</li>
										<li>陶瓷镀膜（世界上超五百万辆在使用）</li>
										<li>打蜡（增加漆面的亮度）</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td>会员信息备注</td>
								<td colspan="6">
									<textarea name="order_uinfo" placeholder="请输入会员备注信息"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--添加服务和商品-->
				<div class="norder_box">
					<h2><span></span>添加服务与商品</h2>
					<div class="btn_success choose_spend f_left choose_goods">
						<i class="fa fa-cart-plus fa-3x"></i>
						<p>选择商品和服务</p>
					</div>
					<!--开单所选服务-->
					<div class="spend_info" id="ceshi">
						<ul></ul>
						<div class="total">本次共计消费<em class="totalpic"></em>，会员价格<em class="totalupic"></em></div>
					</div>
				</div>
				<!--订单备注-->
				<div class="norder_box">
					<h2><span></span>订单备注(此内容会在小票展示)</h2>
					<textarea name="order_note" placeholder="请输入订单备注"></textarea>
				</div>


				<div class="norder_box order_notice">
					<h2><span></span>短信通知</h2>
					<ul class="pay_box clearfix">
						<li class="radio_box">
							<i class="fa fa-circle-thin fa-1x"></i>
							<input type="radio" name="message" id="333"/><!--以下需要是否通知id-->
							<span>通知</span>
						</li>
						<li class="radio_box">
							<i class="fa fa-circle-thin fa-1x"></i>
							<input type="radio" name="message"/>
							<span>不通知</span>
						</li>
					</ul>
				</div>

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
				//=====弹出窗设置
				function DelTipWidth(Twidth,Theight){
					$(".tip_box",Wparent).css({"width":Twidth+"px","height":Theight+"px","margin-top":-(Theight/2)+"px","margin-left":-(Twidth/2)+"px"});
					$(".tip_close",Wparent).on("click",Tipclose);
				}
				//=====关闭弹出窗
				function Tipclose(){
					$(".tip_box",Wparent).remove(); //移除新增的外层className
					$(".tip_bg",Wparent).remove(); //移除新增的背景className
				}
				//初始化
				var Wparent = window.parent.document,
					tipBg = "<div class='tip_bg'></div>",
					tipBox = "<div class='tip_box'></div>"
					goodsData = [],//商品数据
					serveData = [];//服务数据
				$(".order_notice li").find("input[type='radio']").prop("disabled",true);
				$(".order_notice").hide();
				$("#member").prev().prop("disabled",true).parents("li").addClass("not_allowed").next().find("input[type='radio']").prop("checked",true).prev().removeClass("fa-circle-thin").addClass("fa-check-circle");
				$(".special:first").prev().children().attr("rowspan",$("table").find(".special").length+1);
				//添加爱车
				$(".add_car").click(function(){
					var userId = $("#m_id").val();
					$("body",Wparent).append(tipBg);
					$("body",Wparent).append(tipBox);
					$(".tip_box",Wparent).prepend("<h2>添加爱车<span class='tip_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox'></div>");
					$(".tip_tbox",Wparent).append("<iframe src="+userId+"'order_addCar.jsp?userId=' frameborder='0' width='100%' height='100%' seamless></iframe>");
					DelTipWidth(700,520);
					var titH = $(".tip_box",Wparent).find("h2").outerHeight();
					$(".tip_tbox",Wparent).css("height",520 - titH);
				});
				//编辑爱车
				$("body").off("click",".edit_car");
				$("body").on("click",".edit_car",function(){
					var userId = $("#m_id").val(), //用户id
						carId = $(this).parent().find(".plate_code em").text(), //车牌号
						num = $("li").index($(this).closest("li"));//这个只有我用
					$("body",Wparent).append(tipBg);
					$("body",Wparent).append(tipBox);
					$(".tip_box",Wparent).prepend("<h2>编辑爱车<span class='tip_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox'></div>");
					$(".tip_tbox",Wparent).append(""+userId+""+carId+"<iframe src='order_addCar.jsp?userId=&carId=&index=' frameborder='0' width='100%' height='100%' seamless></iframe>"+num+"");
					DelTipWidth(700,520);
					var titH = $(".tip_box",Wparent).find("h2").outerHeight();
					$(".tip_tbox",Wparent).css("height",520 - titH);
				});
				//为会员时，爱车必选
				//选择服务
				$(".choose_serve").click(function(){
					if($(".user_have").is(":visible")&&$(".car_row").find(".curr").length<=0){
						$.layerTip("error","你还未选择爱车，请先选择爱车");
					}else{
						$("body",Wparent).append(tipBg);
						$("body",Wparent).append(tipBox);
						$(".tip_box",Wparent).prepend("<h2>选择服务项目<span class='tip_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox'></div>");
						$(".tip_tbox",Wparent).append("<iframe src='choose_Serve.jsp' frameborder='0' width='100%' height='100%' seamless></iframe>");
						DelTipWidth(700,500);
						var titH = $(".tip_box",Wparent).find("h2").outerHeight();
						$(".tip_tbox",Wparent).css("height",500 - titH);
					}
				});
				//选择商品
				$(".choose_goods").click(function(){
					$("body",Wparent).append(tipBg);
					$("body",Wparent).append(tipBox);
					$(".tip_box",Wparent).prepend("<h2>选择商品<span class='tip_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox'></div>");
					$(".tip_tbox",Wparent).append("<iframe src='choose_Goods.jsp' frameborder='0' width='100%' height='100%' seamless></iframe>");
					DelTipWidth(700,400);
					var titH = $(".tip_box",Wparent).find("h2").outerHeight();
					$(".tip_tbox",Wparent).css("height",400 - titH);
				});
				//查询会员获取信息
				var getPara = $.getUrlParam("id");
				if(getPara=="initial"){
					//首次未搜索
				}else if(getPara==null){
					$.layerTip("error","暂无该会员，请先添加会员");
				}else{
					$(".user_have").show();
					$(".order_notice").show();
					$(".order_notice li").find("input[type='radio']").prop("disabled",false);
					$("#member").prev().prop("disabled",false).parents("li").removeClass("not_allowed").find("input[type='radio']").prop("checked",true).prev().removeClass("fa-circle-thin").addClass("fa-check-circle");
					$("#member").parents("li").next().find("input[type='radio']").prop("checked",false).prev().removeClass("fa-check-circle").addClass("fa-circle-thin");
					$("#free").prev().prop("disabled",true).parents("li").addClass("not_allowed");
					$("#only").prev().prop("disabled",true).parents("li").addClass("not_allowed");
					$(".order_notice li:first").find("input[type='radio']").prop("checked",true).prev().removeClass("fa-circle-thin").addClass("fa-check-circle");
				}
				//选择爱车
				$("body").off("click",".car_row .choose_car");
				$("body").on("click",".car_row .choose_car",function(){
					var text = $(this).parents("li").find(".mileage").text(),
						mileage = $(this).parents("li").siblings().find("input[type='number']");
					if(mileage.length>0){
						mileage.parent().html(mileage.parent().next().val());
					}
					$(this).text("已选择").removeClass("choose_car").parents("li").addClass("curr").siblings().removeClass("curr").find(".table_warning").text("选择爱车").addClass("choose_car");
					$(this).parents("li").find(".mileage").next().val(text);
					$(this).parents("li").find(".mileage").html("<input type='number' value='"+text+"'/>");
				});
				//更新里程数
				$("body").off("click",".car_row .table_info")
				$("body").on("click",".car_row .table_info",function(){
					var that = $(this),
						dataObj = {"mileage":$(this).prev().find("input[type='number']").val()};
					$.ajax({
						type:"post",
						url:"#",
						data:dataObj,
						success:function(data){
							var result = {"data":1};//这里是测试数据，请注意删除
							if(result.data==1){
								that.prev().find("input[type='hidden']").val(that.prev().find("input[type='number']").val());
								$.layerTip("success","更新成功");
							}else{
								$.layerTip("error","更新失败，请重试");
							}
						},
						error:function(data){
							$.layerTip("error","更新失败，请重试");
						}
					});
				});
				//删除所选服务和商品
				$("body").on("click",".norder_box .del_spend",function(){
					//删除对应数组数据
					var goodsIndex = $(".data_goods").index($(this).closest(".data_goods")),
						serveIndex = $(".data_serve").index($(this).closest(".data_serve"));
					if($(this).closest("li").prop("class") == "data_serve"){
						serveData.splice(serveIndex,1);
					}else{
						goodsData.splice(goodsIndex,1);
					}
					//删除页面展示
					var goodsPic = $(this).parent().find(".goods_pic").text(),
						severPic = $(this).parent().find(".sever_pic").text(),
						severUpic = $(this).parent().find(".sever_upic").text(),
						total = $(".total").find(".totalpic").text(),
						totalu = $(".total").find(".totalupic").text();
					if(goodsPic==null||goodsPic=="undefind"||goodsPic==""){
						goodsPic = 0;
					}
					if(severPic==null||severPic=="undefind"||severPic==""){
						severPic = 0;
					}
					if(severUpic==null||severUpic=="undefind"||severUpic==""){
						severUpic = 0;
					}
					total = parseInt(total) - parseInt(severPic) - parseInt(goodsPic);
					totalu= parseInt(totalu) - parseInt(severUpic) - parseInt(goodsPic);
					$(".total").find(".totalpic").text(total+"元");
					$(".total").find(".totalupic").text(totalu+"元");
					$(this).parent().remove();
					if($(".spend_info").find("li").length<=0){
						$(".spend_info").hide();
					}
				});
				//最终结算
				$(".total_btn").click(function(){
					if($(".spend_info").find("li").length<=0){
						$.layerTip("error","你还未选择服务或商品，请先选择后再结算");
					}else{
						var userId,Message;
						if($(".user_have").is(":hidden")){
							userId = "";
						}else{
							userId = $("#m_id").val();
						}
						if($(".order_notice").is(":hidden")){
							Message = "";
						}else{
							Message = $(".order_notice").find("input[name='message']:checked").prop("id");
						}
						var data = {
							"userId":userId, //会员id
							"codeId":$(".car_row li.curr").find(".plate_code em").text(), //车牌号
							"expire_time":$("#expire_time").text(), //年卡到期日
							"goodsInfo":goodsData,//商品数组
							"serveInfo":serveData,//服务数组
							"price":parseFloat($(".totalpic").text()), //订单原总价
							"price1":parseFloat($(".totalupic").text()), //订单会员总价
							"userNote":$(".user_have").find("textarea[name='order_uinfo']").val(),//会员备注
							"orderNote":$(".norder_box").find("textarea[name='order_note']").val(),//订单备注
							"settleId":$(".order_state").find("input[name='payment']:checked").prop("id"),//结算方式id
							"Message":Message//短信提示
						};
						console.log(data);
						$.ajax({
							type:"post",
							url:"#",
							data:data,
							success:function(result){
								$.layerTip("success","开单成功，请在订单管理中查看");
							},
							error:function(error){
								$.layerTip("error","开单失败，请重试！");
							}
						});
					}
				});
			});
		</script>	
	</body>
</html>
		