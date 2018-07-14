package cn.nas.controller;
import cn.nas.dao.CarMapper;
import cn.nas.dao.CustomMapper;
import cn.nas.dao.MemberCardMapper;
import cn.nas.pojo.Car;
import cn.nas.pojo.Custom;
import cn.nas.pojo.MemberCard;
import cn.nas.tools.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class AddMember {
    @Autowired
    private CarMapper carMapper;
    @Autowired
    private MemberCardMapper memberCardMapper;
    @Autowired
    private CustomMapper customMapper;
    @Autowired
    private Test tool;
    @RequestMapping(value = "/add")
    public void add(HttpServletResponse response,
                            @RequestParam String fullname,
                            @RequestParam String mobile,
                            @RequestParam String isCarNo,
                            @RequestParam Integer member_card,
                            @RequestParam Integer car_brand
                            ){

        Car car = new Car();
        car.setCarNum(isCarNo);
        String brand= "";
        if(car_brand==1){
            brand = "奥迪";
        }else if(car_brand==2){
            brand = "奔驰";
        }else if(car_brand==3){
            brand = "大众";
        }
        car.setcBrand(brand);
        MemberCard memberCard = new MemberCard();
        memberCard.setCardBalance(20000);

        //卡片类型
        String type = "";
        if(member_card==1){
            type = "储值卡";
            memberCard.setCardDiscount(0.85);
        }else if(member_card==2){
            memberCard.setCardDiscount(1);
            type = "年卡";
        }
        memberCard.setCardType(type);
        String cardnum = tool.nextCode();
        memberCard.setCardNum(cardnum);
        carMapper.insertSelective(car);
        memberCardMapper.insertSelective(memberCard);


        Custom custom = new Custom();

        custom.setName(fullname);
        custom.setPhone(mobile);
        int id1=memberCardMapper.selectBycardnum(cardnum);
        int id2=carMapper.selectBycarnum(isCarNo);

        custom.setMembercardId(id1);
        custom.setCarId(id2);
        int cus = customMapper.insertSelective(custom);
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(cus>0){
            out.print("<script>alert('添加成功！')</script>");
        }

    }
}
