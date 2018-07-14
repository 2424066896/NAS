package cn.nas.controller;

import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class Thread {
    private static int st = 0;      //静态的
    private int index = 0;          //非静态


    @RequestMapping("/test")
    public void test() {
        System.out.println(st++ + " | " + index++);
    }
}
