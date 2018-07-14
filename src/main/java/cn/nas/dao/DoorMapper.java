package cn.nas.dao;

import cn.nas.pojo.Door;

public interface DoorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Door record);

    int insertSelective(Door record);

    Door selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Door record);

    int updateByPrimaryKey(Door record);
}