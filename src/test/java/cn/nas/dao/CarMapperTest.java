package cn.nas.dao;
import cn.nas.pojo.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext-mybatis.xml")
public class CarMapperTest {

    @Autowired
    private CarMapper carMapper;
    @Autowired
    private OrderMapper OrderMapper;

    @Autowired
    private CustomMapper customMapper;
    @Test
    public void selectBydate(){
        List<Order> a = OrderMapper.selectBydate("2018-07-01", "2018-07-08",0,13);
        for(Order o:a){
            System.out.println(o.getOrderNum());
        }
        System.out.println(a.size());
    }


    @Test
    public void selectCount(){
        int a = OrderMapper.selectCount("2018-07-01", "2018-07-08");
        System.out.println(a);
    }

}