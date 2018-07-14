<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>今日数据</title>
		<link type="text/css" rel="stylesheet" href="../fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="../css/boss.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="boss_tit clearfix">
				<button type="button" class="btn blue_btn refresh">刷新数据</button>
				<span class="resh_time">上次刷新<em></em></span>
			</div>
			<ul class="data_list clearfix">
				<li>
					<span><i class="fa fa-car fa-1x f_left blue"></i>已洗车辆</span>
					<p><cite class="blue">18</cite><sub>辆</sub></p>
				</li>
				<li>
					<span><i class="fa fa-clock-o fa-2x f_left orange"></i>排队车辆</span>
					<p><cite class="orange">33</cite><sub>辆</sub></p>
				</li>
				<li>
					<span><i class="fa fa-user fa-2x f_left violet"></i>空闲工位</span>
					<p><cite class="violet">80</cite><sub>辆</sub></p>
				</li>
				<li>
					<span><i class="fa fa-home fa-2x f_left orange"></i>排队车辆最多店铺</span>
					<p><cite class="orange" style="font-size:42px;">坞城路店</cite><sub>16辆</sub></p>
				</li>
				<li>
					<span><i class="fa fa-home fa-2x f_left green"></i>排队车辆最少店铺</span>
					<p><cite class="green" style="font-size:42px;">建邦店</cite><sub>4辆</sub></p>
				</li>
				<li>
					<span><i class="fa fa-commenting fa-2x f_left lightred"></i>全部评价</span>
					<p><cite class="lightred">28</cite><sub>条</sub></p>
				</li>
				<li>
					<span><i class="fa fa-thumbs-up fa-2x f_left rose"></i>好评数量</span>
					<p><cite class="rose">20</cite><sub>条</sub></p>
				</li>
				<li>
					<span><i class="fa fa-thumbs-down fa-2x f_left green"></i>差评数量</span>
					<p><cite class="green">8</cite><sub>条</sub></p>
				</li>
			</ul>
		</div>
		<!--javascript include-->
		<script src="../js/jquery-2.2.1.min.js"></script>
		<script src="../js/bootstrap-datepicker.js"></script>
		<script src="../js/boss.js"></script>
		<script>
			$(function(){
				//刷新
				$(".refresh").click(function(){
					window.location.reload(true);
				});
				var d = new Date(),
					m = d.getMinutes();
				if(d.getMinutes().toString().length<=1){
					m="0"+d.getMinutes();
				}
				$(".resh_time em").text(d.getHours()+":"+m);
			});
		</script>
	</body>
</html>