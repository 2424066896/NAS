<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>选择商品和服务</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
	<body>


		<form action="kaidan" method="" id="chooseform">
            <ul class="addpro_box">
                <li>
                    <label>商品选择：</label>
                    <select name="googs" required data-msg-required="请选择商品">
                            <option value="">请选择</option>
                            <!--value为商品id，data-price为商品的价格-->
                            <option value="1" data-price="100" selected>香水</option>
                            <option value="2">毛巾</option>
                            <option value="3">太阳镜</option>
                    </select>
                </li>

         <%--       <li>
                    <label>服务选择：</label>
                    <select name="serve" required data-msg-required="请选择服务">
                        <option value="">请选择</option>
                        <!--这里value为服务的id-->
                        <option value="1">陶瓷镀膜（世界上超五百万辆在使用）</option>
                        <option value="2">房车清洗</option>
                        <option value="3">驾驶舱气触媒空气治理A+雾化气触媒B+消毒车美容人健康</option>
                    </select>
                </li>--%>

                <li>
                    <label>服务人员：</label>
                    <select name="sale" required data-msg-required="请选择服务">
                        <option value="">请选择</option>
                        <!--这里value为服务的id-->
                        <option value="1">赵六</option>
                        <option value="2">孙七</option>
                        <option value="3">周八</option>
                    </select>
                </li>

                <li>
                    <label>电话号码：</label>
                    <input type="text" value="" name="telphone">
                </li>
                <li>
                    <label>开单日期：</label>
                    <input type="date" value="" name="riqi">
                </li>
            </ul>



            <div class="norder_box order_state">
                <h2><span></span>结算方式</h2>
                <ul class="pay_box clearfix">
                    <li class="radio_box">
                        <i class="fa fa-circle-thin fa-1x"></i>
                        <input type="radio" name="payment" value="1"/>
                        <span>储值卡</span>
                    </li>
                    <li class="radio_box">
                        <i class="fa fa-circle-thin fa-1x"></i>
                        <input type="radio" name="payment" value="2"/>
                        <span>年卡</span>
                    </li>
                </ul>
            </div>
            <input type="submit" value="去结算" class="btn blue_btn total_btn">
            <input type="button" value="导出" onclick="outer()" class="btn blue_btn total_btn">
            <input type="hidden" value="${id}" id="id1">


		</form>

		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$(".choose_radio span").click(function(){
					$(this).addClass("curr").siblings().removeClass("curr");
				});
				$("#choose_form").validate({
					errorElement:"div"
				});
				$(".btn").click(function(){
					var Wparent = window.parent.document,
						flag = $("#choose_form").valid();
					if (!flag) {  
						//alert("没有通过验证");  
						return;  
					}else{
						var html,
							googsName = $("select[name='googs']").find("option:selected").text(),
							goodsId = $("select[name='googs']").find("option:selected").val(),
							price = $("select[name='googs']").find("option:selected").attr("data-price"),
							staffId = $(".choose_span").find(".curr").prop("id"),
							staff = $(".choose_span").find(".curr").text();
							if(staff==null||staff==""||staff=="undefined"){
								staff="-";
							}
							if(staffId==null||staffId==""||staffId=="undefined"){
								staffId="";
							}
						html = "<li class='data_goods'><span>"+googsName+"</span>，本商品价值<em class='goods_pic'>"+price+"元</em>，销售：<span>"+staff+"</span><span class='del_spend'>删除<i class='fa fa-close'></i></span></li>";
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info ul").append(html);
						var list = $("iframe[name='cont_box']",Wparent).contents().find(".spend_info ul li"),
							picArr = [0,0],total,totalu;
						$(list).each(function(){
							var goodsPic = $(this).find(".goods_pic").text(),
								severPic = $(this).find(".sever_pic").text(),
								severUpic = $(this).find(".sever_upic").text();
							if(goodsPic==null||goodsPic=="undefind"||goodsPic==""){
								goodsPic = 0;
							}
							if(severPic==null||severPic=="undefind"||severPic==""){
								severPic = 0;
							}
							if(severUpic==null||severUpic=="undefind"||severUpic==""){
								severUpic = 0;
							}
							total = parseInt(goodsPic)+parseInt(severPic);
							totalu = parseInt(goodsPic)+parseInt(severUpic);
							totalAll = picArr[0]+total;
							totaluAll = picArr[1]+totalu;
							picArr = [totalAll,totaluAll];
						});
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info .totalpic").text(picArr[0]+"元");
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info .totalupic").text(picArr[1]+"元");
						$("iframe[name='cont_box']",Wparent).contents().find(".spend_info",Wparent).show();
						var googsData = {"goodsId":goodsId,"staffId":staffId};
						window.parent.frames["cont_box"].goodsData.push(googsData);
						$(".tip_bg",Wparent).remove();
						$(".tip_box",Wparent).remove();
					};
				
				});



			});

            $("#sure").click(function () {
               /* var price = $("select[name='googs']").find("option:selected").attr("data-price")
                alert(price)*/
            })

            function outer() {
                var id=$("#id1").val();
               location.href ="daochu?id="+id;
            }
        </script>
	</body>
</html>
