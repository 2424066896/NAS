<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>今日实时数据</title>
		<link type="text/css" rel="stylesheet" href="../fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="../css/boss.css"/>
	</head>
	<body>
		<div class="main_box echarts_box">
			<div class="boss_tit border_b tit_padding clearfix">
				<button type="button" class="btn blue_btn refresh">刷新数据</button>
				<span class="resh_time">上次刷新<em></em></span>
			</div>
			<div class="cont_box">
				<ul class="point clearfix">
					<li>
						<span class="f_left max_bgcolor"></span>
						<em>最大值</em>
					</li>
					<li>
						<span class="f_left min_bgcolor"></span>
						<em>最小值</em>
					</li>
				</ul>
				<table border="0" cellspacing="0" cellpadding="0" class="table">
					<thead>
						<tr>
							<th>门店</th>
							<th>已洗数量</th>
							<th>洗车中</th>
							<th>排队中</th>
							<th>评价</th>
							<th>工作中技师</th>
							<th>开单收入（元）</th>
							<th>办卡收入（元）</th>
							<th>会员消费（元）</th>
							<th>总收入（元）</th>
							<th>员工提成（元）</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>坞城路007</td>
							<td>
								<span>8</span>
								<cite class="movetip">
									<em>新会员数量：4辆</em>
									<em>老会员数量：4辆</em>
								</cite>
							</td>
							<td>
								<span>7/8</span>
							</td>
							<td>
								<span>5</span>
							</td>
							<td>
								<span>66</span>
								<cite class="movetip">
									<em>好评：2条</em>
									<em>差评：4条</em>
								</cite>
							</td>
							<td>
								<span>6/6</span>
							</td>
							<td>
								<span>120</span>
								<cite class="movetip">
									<em>老会员：100元</em>
									<em>新会员：20元</em>
								</cite>
							</td>
							<td>
								<span>330</span>
								<cite class="movetip">
									<em>新会员：1000元</em>
									<em>转化会员：200元</em>
								</cite>
							</td>
							<td>
								<span>516</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>345</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>990</span>
							</td>
						</tr>
						<tr>
							<td>晋阳街建邦店</td>
							<td>
								<span>2</span>
								<cite class="movetip">
									<em>新会员数量：1辆</em>
									<em>老会员数量：1辆</em>
								</cite>
							</td>
							<td>
								<span>4/6</span>
							</td>
							<td>
								<span>51</span>
							</td>
							<td>
								<span>661</span>
								<cite class="movetip">
									<em>好评：2条</em>
									<em>差评：4条</em>
								</cite>
							</td>
							<td>
								<span>5/8</span>
							</td>
							<td>
								<span>12</span>
								<cite class="movetip">
									<em>老会员：100元</em>
									<em>新会员：20元</em>
								</cite>
							</td>
							<td>
								<span>33</span>
								<cite class="movetip">
									<em>新会员：1000元</em>
									<em>转化会员：200元</em>
								</cite>
							</td>
							<td>
								<span>156</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>3455</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>199</span>
							</td>
						</tr>
						<tr>
							<td>体育路店</td>
							<td>
								<span>81</span>
								<cite class="movetip">
									<em>新会员数量：4辆</em>
									<em>老会员数量：4辆</em>
								</cite>
							</td>
							<td>
								<span>3/3</span>
							</td>
							<td>
								<span>15</span>
							</td>
							<td>
								<span>6</span>
								<cite class="movetip">
									<em>好评：2条</em>
									<em>差评：4条</em>
								</cite>
							</td>
							<td>
								<span>1/12</span>
							</td>
							<td>
								<span>122</span>
								<cite class="movetip">
									<em>老会员：100元</em>
									<em>新会员：20元</em>
								</cite>
							</td>
							<td>
								<span>55</span>
								<cite class="movetip">
									<em>新会员：1000元</em>
									<em>转化会员：200元</em>
								</cite>
							</td>
							<td>
								<span>56</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>1345</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>909</span>
							</td>
						</tr>
						<tr>
							<td>电子街店</td>
							<td>
								<span>16</span>
								<cite class="movetip">
									<em>新会员数量：2辆</em>
									<em>老会员数量：14辆</em>
								</cite>
							</td>
							<td>
								<span>3/10</span>
							</td>
							<td>
								<span>51</span>
							</td>
							<td>
								<span>62</span>
								<cite class="movetip">
									<em>好评：2条</em>
									<em>差评：4条</em>
								</cite>
							</td>
							<td>
								<span>6/12</span>
							</td>
							<td>
								<span>12</span>
								<cite class="movetip">
									<em>老会员：100元</em>
									<em>新会员：20元</em>
								</cite>
							</td>
							<td>
								<span>54</span>
								<cite class="movetip">
									<em>新会员：1000元</em>
									<em>转化会员：200元</em>
								</cite>
							</td>
							<td>
								<span>53</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>1344</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>900</span>
							</td>
						</tr>
						<tr>
							<td>五里路店</td>
							<td>
								<span>1</span>
								<cite class="movetip">
									<em>新会员数量：4辆</em>
									<em>老会员数量：4辆</em>
								</cite>
							</td>
							<td>
								<span>10/10</span>
							</td>
							<td>
								<span>5</span>
							</td>
							<td>
								<span>62</span>
								<cite class="movetip">
									<em>好评：2条</em>
									<em>差评：4条</em>
								</cite>
							</td>
							<td>
								<span>1/12</span>
							</td>
							<td>
								<span>12</span>
								<cite class="movetip">
									<em>老会员：100元</em>
									<em>新会员：20元</em>
								</cite>
							</td>
							<td>
								<span>330</span>
								<cite class="movetip">
									<em>新会员：1000元</em>
									<em>转化会员：200元</em>
								</cite>
							</td>
							<td>
								<span>53</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>1344</span>
								<cite class="movetip">
									<em>老会员：1000元</em>
									<em>新会员：200元</em>
								</cite>
							</td>
							<td>
								<span>900</span>
							</td>
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
				//排列最大最小值
				var sortArray = [2,3,4,6,7,8,9,10];
				$.each(sortArray,function(){
					var td = ".table tbody tr td:nth-child("+this+")",max=-1,min=-1;
					$(td).each(function(){
						if(max==-1){
							max = $(this).find("span").text();
						}
						if(min==-1){
							min = $(this).find("span").text();
						}
						if($(this).find("span").text().indexOf("/") >= 0){
							var before = parseInt($(this).find("span").text().split("/")[0]),
			        			after = parseInt($(this).find("span").text().split("/")[1]),
			        			bemax = parseInt(max.split("/")[0]),
			        			afmax = parseInt(max.split("/")[1]),
			        			bemin = parseInt(min.split("/")[0]),
								afmin = parseInt(min.split("/")[1]);
			        		if(before/after>=bemax/afmax){
			        			max = $(this).find("span").text();
			        		}else if(before/after<=bemin/afmin){
			        			min = $(this).find("span").text();
			        		}
						}else if($(this).find("span").text().indexOf("/") < 0 && parseInt($(this).find("span").text())>=parseInt(max)){
							max=$(this).find("span").text();
						}else if($(this).find("span").text().indexOf("/") < 0 && parseInt($(this).find("span").text())<=min){
							min = $(this).find("span").text();
						}
					});
					//max
					$(td).each(function(){
						var before = parseInt($(this).find("span").text().split("/")[0]),
		        			after = parseInt($(this).find("span").text().split("/")[1]),
		        			bemax = parseInt(max.split("/")[0]),
		        			afmax = parseInt(max.split("/")[1]);
						if($(this).find("span").text().indexOf("/") >= 0 && before/after==bemax/afmax){
							$(this).css({"background-color":"#f3575b","color":"#fff"});
						}else if($(this).find("span").text().indexOf("/") < 0 && $(this).find("span").text()==max){
							$(this).css({"background-color":"#f3575b","color":"#fff"});
						}
					});
					//min
					$(td).each(function(){
						if($(this).find("span").text()==min){
							$(this).css({"background-color":"#59c69f","color":"#fff"});
						}
					});
				});
				//moveTip
				$(".table td").hover(function(e){
					if($(this).find(".movetip").length>0){
						var x = 20;
						y = -30,
				        otitle = $(this).find(".movetip").html();
				        var ndiv = "<div class='tooltip'>" + otitle + "</div>";
				        $("body").append(ndiv);
				        $(".tooltip").css({
							"top" : (e.pageY + y) + "px",
							"left" : (e.pageX + x) + "px"
				        }).show(2000);
				        $(this).mousemove(function(e) {
				          $(".tooltip").css({
							"top" : (e.pageY + y) + "px",
							"left" : (e.pageX + x) + "px"
				          }).show(1000);
				        });
			        }
				}, function(){
			        $(".tooltip").remove();
				});
			});
		</script>
	</body>
</html>