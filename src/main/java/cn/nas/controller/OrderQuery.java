package cn.nas.controller;
        import cn.nas.dao.OrderMapper;
        import cn.nas.pojo.Order;
        import cn.nas.tools.Page;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Controller;
        import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.bind.annotation.RequestParam;
        import org.springframework.web.servlet.ModelAndView;

        import java.util.List;

@Controller
public class OrderQuery {
    @Autowired
    private OrderMapper orderMapper;

    @RequestMapping(value = "/querylist")
    public ModelAndView queryList(@RequestParam String start,
                                  @RequestParam String end,
                                  @RequestParam(required = false) String order_code,
                                  @RequestParam(required = false) Integer pageNo,
                                  @RequestParam(required = false) Integer pageSize,
                                  ModelAndView mv
    ){
        Page<Order> page = new Page<Order>();
        if(order_code==null||order_code.equals("")){
            if(pageNo==null||pageNo.equals("")){
                pageNo = 1;
            }
            pageSize = 3;
            List<Order> list = orderMapper.selectBydate(start, end,(pageNo-1)*pageSize,pageSize);
            int count = orderMapper.selectCount(start, end);

            page.setList(list);
            page.setPageSize(pageSize);
            page.setPageNo(pageNo);
            page.setTotalCount(count);
            mv.setViewName("order_List");
            mv.addObject("page",page);
        }else if(order_code!=null||!order_code.equals("")) {
            List<Order> order = orderMapper.selectByOrderNum(order_code);
            page.setList(order);
            mv.setViewName("order_List");
            mv.addObject("page",page);
        }else if(start==null&&end==null&&order_code==null) {
            mv.setViewName("order_List");
            page=null;
            mv.addObject("page",page);
        }
        return mv;
    }
}
