<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>门店评分排行</title>
		<link type="text/css" rel="stylesheet" href="../fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="../css/datepicker.css"/>
		<link type="text/css" rel="stylesheet" href="../css/boss.css"/>
	</head>
	<body>
		<div class="main_box echarts_box">
			<div class="boss_tit border_b tit_padding clearfix">
				<span class="resh_time f_left">排序方式</span>
				<button type="button" class="btn blue_btn" data-id="1">综合评分</button>
				<button type="button" class="btn line_btn" data-id="2">店长评分</button>
				<button type="button" class="btn line_btn" data-id="3">技师评分</button>
				<button type="button" class="btn line_btn" data-id="4">评价条数</button>
				<button type="button" class="btn line_btn" data-id="5">好评率</button>
			</div>
			<div class="cont_box">
				<p class="tiptxt">以最近三个月的数据为考核标准</p>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>门店</th>
							<th>综合分值</th>
							<th>店长评分</th>
							<th>技师评分</th>
							<th>评价总数（条）</th>
							<th>好评率</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>坞城路007</td>
							<td>8</td>
							<td>3</td>
							<td>4</td>
							<td>110</td>
							<td>99%</td>
						</tr>
						<tr>
							<td>体育路店</td>
							<td>9</td>
							<td>9</td>
							<td>3</td>
							<td>100</td>
							<td>98%</td>
						</tr>
						<tr>
							<td>晋阳街店</td>
							<td>5</td>
							<td>6</td>
							<td>4</td>
							<td>90</td>
							<td>99%</td>
						</tr>
						<tr>
							<td>北大街店</td>
							<td>1</td>
							<td>5</td>
							<td>4</td>
							<td>10</td>
							<td>29%</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--javascript include-->
		<script src="../js/jquery-2.2.1.min.js"></script>
		<script src="../js/bootstrap-datepicker.js"></script>
		<script src="../js/boss.js"></script>
		<script>
			$(function(){
				var initial = 1;
				trSort(initial);
				$(".btn").click(function(){
					var index = $(this).attr("data-id");
					trSort(index);
					$(this).siblings().removeClass("blue_btn").addClass("line_btn");
					$(this).removeClass("line_btn").addClass("blue_btn");
				});
				function descSort(a,b){
					return b - a;
				}
				function trSort(obj){
					var tdIndex = ".table tbody tr td:nth-child("+(parseInt(obj)+1)+")",tdArray = [];
					$(tdIndex).each(function(){
						if($(this).text().indexOf("%") >= 0){
							tdArray.push(parseFloat($(this).text()));
						}else{
							tdArray.push($(this).text());
						}
					});
					tdArray.sort(descSort);
					$.each(tdArray,function(e){
						var thisTxt = tdArray[e];
						$(".table tbody tr").each(function(){
							if(parseFloat($(this).children("td:eq("+parseInt(obj)+")").text()) == parseFloat(thisTxt)){
								$(".table tbody").append($(this));
							}
						});
					});
				}
			});
		</script>
	</body>
</html>