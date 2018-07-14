package cn.nas.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * staff
 * @author 
 */
public class Staff implements Serializable {
    private Integer id;

    /**
     * 员工编号
     */
    private String staffNum;

    /**
     * 员工姓名
     */
    private String staffName;

    /**
     * 员工性别
     */
    private String staffSex;

    /**
     * 岗位
     */
    private String staffGangwei;

    /**
     * 员工电话
     */
    private String staffPhone;

    /**
     * 录入时间
     */
    private Date joinTime;

    /**
     * 员工状态
     */
    private String staffState;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStaffNum() {
        return staffNum;
    }

    public void setStaffNum(String staffNum) {
        this.staffNum = staffNum;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(String staffSex) {
        this.staffSex = staffSex;
    }

    public String getStaffGangwei() {
        return staffGangwei;
    }

    public void setStaffGangwei(String staffGangwei) {
        this.staffGangwei = staffGangwei;
    }

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone;
    }

    public Date getJoinTime() {
        return joinTime;
    }

    public void setJoinTime(Date joinTime) {
        this.joinTime = joinTime;
    }

    public String getStaffState() {
        return staffState;
    }

    public void setStaffState(String staffState) {
        this.staffState = staffState;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Staff other = (Staff) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getStaffNum() == null ? other.getStaffNum() == null : this.getStaffNum().equals(other.getStaffNum()))
            && (this.getStaffName() == null ? other.getStaffName() == null : this.getStaffName().equals(other.getStaffName()))
            && (this.getStaffSex() == null ? other.getStaffSex() == null : this.getStaffSex().equals(other.getStaffSex()))
            && (this.getStaffGangwei() == null ? other.getStaffGangwei() == null : this.getStaffGangwei().equals(other.getStaffGangwei()))
            && (this.getStaffPhone() == null ? other.getStaffPhone() == null : this.getStaffPhone().equals(other.getStaffPhone()))
            && (this.getJoinTime() == null ? other.getJoinTime() == null : this.getJoinTime().equals(other.getJoinTime()))
            && (this.getStaffState() == null ? other.getStaffState() == null : this.getStaffState().equals(other.getStaffState()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getStaffNum() == null) ? 0 : getStaffNum().hashCode());
        result = prime * result + ((getStaffName() == null) ? 0 : getStaffName().hashCode());
        result = prime * result + ((getStaffSex() == null) ? 0 : getStaffSex().hashCode());
        result = prime * result + ((getStaffGangwei() == null) ? 0 : getStaffGangwei().hashCode());
        result = prime * result + ((getStaffPhone() == null) ? 0 : getStaffPhone().hashCode());
        result = prime * result + ((getJoinTime() == null) ? 0 : getJoinTime().hashCode());
        result = prime * result + ((getStaffState() == null) ? 0 : getStaffState().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", staffNum=").append(staffNum);
        sb.append(", staffName=").append(staffName);
        sb.append(", staffSex=").append(staffSex);
        sb.append(", staffGangwei=").append(staffGangwei);
        sb.append(", staffPhone=").append(staffPhone);
        sb.append(", joinTime=").append(joinTime);
        sb.append(", staffState=").append(staffState);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}