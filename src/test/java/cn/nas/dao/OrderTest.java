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
public class OrderTest {
    @Autowired
    private OrderMapper OrderMapper;

    @Test
    public void selectByOrderNum(){
        List<Order> a = OrderMapper.selectByOrderNum("NAS201807104044");
    }
}
