package cn.nas.dao;
import cn.nas.pojo.MemberCard;
import org.apache.ibatis.annotations.Param;
public interface MemberCardMapper {
    int deleteByPrimaryKey(Integer id);
    int insert(MemberCard record);
    int insertSelective(MemberCard record);

    MemberCard selectByPrimaryKey(Integer id);
    int selectBycardnum(String cardnum);
    int selectBalanceBid(Integer id);

    int updateByPrimaryKeySelective(MemberCard record);

    int updateByPrimaryKey(MemberCard record);
    int updateByid(@Param("id") Integer  id,@Param("balance") double  balance);
}