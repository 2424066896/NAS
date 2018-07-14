<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>日洗车量</title>
		<link type="text/css" rel="stylesheet" href="../fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="../css/boss.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="echarts_box" id="echarts_box">
				<div id="main"></div>
			</div>
		</div>
		<!--javascript include-->
		<script src="../js/jquery-2.2.1.min.js"></script>
		<script src="https://cdn.bootcss.com/echarts/3.5.4/echarts.min.js"></script>
		<script src="../js/bootstrap-datepicker.js"></script>
		<script src="../js/boss.js"></script>
		<script>
			$(function(){
				var chartId = document.getElementById('main');
				var resizeWorldMapContainer = function () {
				    chartId.style.width = document.getElementById('echarts_box').clientWidth - 40 +'px';
				    chartId.style.height = document.getElementById('echarts_box').clientHeight - 40 +'px';
				    chartId.style.padding = 20+'px';

				};
				//设置容器高宽
				resizeWorldMapContainer();
				var myChart = echarts.init(chartId);
		        var option = {
				    title : {
				    	text: '最近7天日洗车量',
				        subtext: '图表包含最近7天每天的老会员洗车量、新会员洗车量，包括最低、最高、平均线，鼠标滑过显示说明',
				        itemGap: 15
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:[{
				        	name: '老会员',
				        	icon: 'roundRect'
				        },{
				        	name: '新会员',
				        	icon: 'roundRect'
				        }]
				    },
				    toolbox: {
				        show : true,
				        right : 60,
				        feature : {
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    },
				    calculable : true,
				    grid : {
				    	top: 100
				    },
				    xAxis : [
				        {
				            type : 'category',
				            data : ['5月6日','5月7日','5月8日','5月9日','5月10日','5月11日','5月12日']
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value',
				            name: '单位：辆',
				            nameLocation: 'end',
				            nameGap: 15
				        }
				    ],
				    series : [
				        {
				            name:'老会员',
				            type:'line',
				            data:[9.0, 26.4, 28.7, 70.7, 575.6, 182.2, 48.7],
				            markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name : '平均值'}
				                ]
				            },
				            itemStyle : {
				            	normal:{color:'#989ffa'}
				            }
				        },
				        {
				            name:'新会员',
				            type:'line',
				            data:[9.0, 26.4, 28.7, 270.7, 175.6, 182.2, 48.7],
				            markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name : '平均值'}
				                ]
				            },
				            itemStyle : {
				            	normal:{color:'#59c69f'}
				            }
				        }
				    ]
				};
		        myChart.setOption(option);
			});
		</script>
	</body>
</html>