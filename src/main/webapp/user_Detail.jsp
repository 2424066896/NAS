<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>会员详情</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box">
				<!--会员姓名电话-->
				<div class="user_top" id="123"><b>张三</b><span>18636542147</span></div><!--这里的id是用户id-->
				<!--车辆情况-->
				<div class="user_detail">
					<h2><span></span>车辆情况</h2>
					<div class="clearfix">
						<ul>
							<li>
								<label>品牌</label>
								<span>宝马</span>
							</li>
							<li>
								<label>系列</label>
								<span>宝马（进口）</span>
							</li>
							<li>
								<label>型号</label>
								<span>宝马Z3</span>
							</li>
							<li>
								<label>发动机号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车牌号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车架号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>行驶证</label>
								<span>宝马</span>
							</li>
							<li>
								<label>年份</label>
								<span>宝马</span>
							</li>
							<li>
								<label>指导价</label>
								<span>宝马</span>
							</li>
							<li>
								<label>保险到期日</label>
								<span>宝马</span>
							</li>
						</ul>
						<ul>
							<li>
								<label>品牌</label>
								<span>宝马</span>
							</li>
							<li>
								<label>系列</label>
								<span>宝马（进口）</span>
							</li>
							<li>
								<label>型号</label>
								<span>宝马Z3</span>
							</li>
							<li>
								<label>发动机号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车牌号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车架号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>行驶证</label>
								<span>宝马</span>
							</li>
							<li>
								<label>年份</label>
								<span>宝马</span>
							</li>
							<li>
								<label>指导价</label>
								<span>宝马</span>
							</li>
							<li>
								<label>保险到期日</label>
								<span>宝马</span>
							</li>
						</ul>
						<ul>
							<li>
								<label>品牌</label>
								<span>宝马</span>
							</li>
							<li>
								<label>系列</label>
								<span>宝马（进口）</span>
							</li>
							<li>
								<label>型号</label>
								<span>宝马Z3</span>
							</li>
							<li>
								<label>发动机号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车牌号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>车架号</label>
								<span>宝马</span>
							</li>
							<li>
								<label>行驶证</label>
								<span>宝马</span>
							</li>
							<li>
								<label>年份</label>
								<span>宝马</span>
							</li>
							<li>
								<label>指导价</label>
								<span>宝马</span>
							</li>
							<li>
								<label>保险到期日</label>
								<span>宝马</span>
							</li>
						</ul>
					</div>
				</div>
				<!--车辆情况-->
				<div class="user_detail">
					<h2><span></span>储值卡情况</h2>
					<table border="0" cellspacing="0" cellpadding="0" class="table">
						<thead>
							<tr>
								<th>卡片ID</th>
								<th>卡片种类</th>
								<th>卡片余额</th>
								<th>卡片折扣</th>
								<th>办理店铺</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>22</td>
								<td>都市储值卡</td>
								<td>100</td>
								<td>8.5</td>
								<td>太原火车站店</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--年卡情况-->
				<div class="user_detail">
					<h2><span></span>年卡情况</h2>
					<table border="0" cellspacing="0" cellpadding="0" class="table">
						<thead>
							<tr>
								<th>卡片额度</th>
								<th>办理日期</th>
								<th>过期日期</th>
								<th>状态</th>
								<th>办理店铺</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2000</td>
								<td>2017-03-12</td>
								<td>2017-03-30</td>
								<td>可使用</td>
								<td>太原火车站店</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--大礼包情况-->
				<div class="user_detail">
					<h2><span></span>大礼包情况</h2>
					<table border="0" cellspacing="0" cellpadding="0" class="table">
						<thead>
							<tr>
								<th>礼包名称</th>
								<th>大礼包价格</th>
								<th>办理日期</th>
								<th>过期日期</th>
								<th>办理店铺</th>
								<th>礼包详情</th>
							</tr>
						</thead>
						<tbody>
							<tr id="1"><!--这里的id是用户礼包id-->
								<td>超级大礼包</td>
								<td>1888</td>
								<td>2017-03-30</td>
								<td>2017-05-30</td>
								<td>太原火车站店</td>
								<td>
									<a href="javascript:void(0);" class="table_btn table_info see_btn">
										<i class="fa fa-eye"></i>
										<span>查看</span>
									</a>
								</td>
							</tr>
							<tr id="2"><!--这里的id是用户礼包id-->
								<td>超级大礼包</td>
								<td>1888</td>
								<td>2017-03-30</td>
								<td>2017-05-30</td>
								<td>太原火车站店</td>
								<td>
									<a href="javascript:void(0);" class="table_btn table_info see_btn">
										<i class="fa fa-eye"></i>
										<span>查看</span>
									</a>
								</td>
							</tr>
						</tbody>
					</table>
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
					$(".tipbox_top",window.parent.document).css({"width":Twidth+"px","height":Theight+"px","margin-top":-(Theight/2)+"px","margin-left":-(Twidth/2)+"px"});
					$(".tiptop_close",window.parent.document).on("click",function(){
						$(".tipbg_top",window.parent.document).remove(); //移除新增的背景className
						$(".tipbox_top",window.parent.document).remove(); //移除新增的外层className
					});
				}
				$(".see_btn").click(function(){
					var boxId = $(this).parents("tr").prop("id"),
						userId = $("user_top").prop("id"),
						tipBg = "<div class='tip_bg tipbg_top'></div>",
						tipBox = "<div class='tip_box tipbox_top'></div>",
						Wparent = window.parent.document;
					$.ajax({
						type:"get",
						url:"user_Package.jsp",
						data:{"userId":userId,"bixId":boxId},
						success:function(){
							$("body",Wparent).append(tipBg);
							$("body",Wparent).append(tipBox);
							$(".tipbox_top",Wparent).prepend("<h2>礼包详情<span class='tiptop_close'><i class='fa fa-close'></i></span></h2><div class='tip_tbox tiptop_box'></div>");
							$(".tiptop_box",Wparent).append("<iframe src='user_Package.jsp' frameborder='0' width='100%' height='100%' seamless></iframe>");
							DelTipWidth(660,420);
							var titH = $(".tipbox_top",Wparent).find("h2").outerHeight(),
								Theight = $(".tipbox_top",Wparent).height();
							$(".tiptop_box",Wparent).css("height",Theight - titH);
						},
						error:function(errormsg){
					   		var editFail = "<p class='del_info'>"+errormsg+"</p><div class='tip_btnbox'><button class='btn btn_dsure tiptop_close'>确认</button></div>";
							$("body",Wparent).append(tipBg);
							$("body",Wparent).append(tipBox);
							$(".tipbox_top",Wparent).append(editFail);
							DelTipWidth(400,180);
						}
					});
				});
			});
		</script>
	</body>
</html>
