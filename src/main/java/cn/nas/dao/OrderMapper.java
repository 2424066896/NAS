package cn.nas.dao;

import cn.nas.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);
    List<Order> selectByOrderNum(String orderNum);
    int selectByordernum(String ordernum);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> selectBydate(@Param("start") String start,
                             @Param("end") String end,
                             @Param("from") Integer from,
                             @Param("pageSize") Integer pageSize

    );


    //查询记录数
    int selectCount(@Param("start") String start,
                    @Param("end") String end);


}