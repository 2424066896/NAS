package cn.nas.dao;

import cn.nas.pojo.Car;

public interface CarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer id);
    int selectBycarnum(String carnum);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
}