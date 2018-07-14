package cn.nas.controller;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Login {
    @RequestMapping(value = "/login")
    public String login(){
        return "index";
    }

    @RequestMapping(value = "/detail")
    @ResponseBody
    public String detail(){
        String a = "hello world";
        return JSON.toJSONString(a);
    }
}
