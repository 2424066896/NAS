package cn.nas.dao;

import cn.nas.pojo.Custom;

public interface CustomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Custom record);

    int insertSelective(Custom record);

    Custom selectByPrimaryKey(Integer id);
    int selectByphone(String phone);
    int selectid(Integer id);

    int updateByPrimaryKeySelective(Custom record);

    int updateByPrimaryKey(Custom record);
}