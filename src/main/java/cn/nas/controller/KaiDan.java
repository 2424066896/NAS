package cn.nas.controller;

import cn.nas.dao.CustomMapper;
import cn.nas.dao.MemberCardMapper;
import cn.nas.dao.OrderMapper;
import cn.nas.pojo.Order;
import cn.nas.tools.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class KaiDan {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private MemberCardMapper memberCardMapper;
    @Autowired
    private Test tool;

    @Autowired
    private CustomMapper customMapper;

    @RequestMapping(value = "/kaidan")
    public ModelAndView kaidan(
            ModelAndView mv,
            @RequestParam Integer googs,
            @RequestParam Integer sale,
            @RequestParam String telphone,
            @RequestParam String riqi,
            @RequestParam Integer payment
    ){

        Order order = new Order();
        order.setGoodsId(googs);
        String type = "";
        if(payment==1){
            type = "储值卡";
        }else  if(payment==2){
            type = "年卡";
        }



        double price = 0;
        if(googs==1){
            price= 20;
        }else if(googs==2){
            price= 30;
        }else if(googs==3){
            price= 50;
        }
        String num = tool.nextCode();
        order.setPayType(type);
        order.setOrderNum(num);
        order.setOrderDate(riqi);
        int id = customMapper.selectByphone(telphone);

        //根据客户id查找客户对应的会员卡id
        int huiyuanid = customMapper.selectid(id);
        //根据会员id查找对应的卡片余额
        double balance = memberCardMapper.selectBalanceBid(huiyuanid);
        balance = balance-price;
        //根据卡片id修改对应的卡片余额；
        int update = memberCardMapper.updateByid(huiyuanid,balance);
        order.setCustomId(id);
        order.setOrderPrice(price);
        order.setStaffId(sale);
        orderMapper.insertSelective(order);

        int id1 = orderMapper.selectByordernum(num);
        mv.setViewName("choose_Goods");
        mv.addObject("id",id1);
        System.out.println(id1);
        return mv;
    }
}
