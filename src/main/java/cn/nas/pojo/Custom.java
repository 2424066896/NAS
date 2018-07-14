package cn.nas.pojo;

import java.io.Serializable;

/**
 * custom
 * @author 
 */
public class Custom implements Serializable {
    /**
     * 客户id
     */
    private Integer id;

    /**
     * 客户名字
     */
    private String name;

    /**
     * 客户电话
     */
    private String phone;

    /**
     * 客户性别
     */
    private String sex;

    /**
     * 客户角色
     */
    private String customRole;

    /**
     * 汽车id
     */
    private Integer carId;

    /**
     * 储值卡id
     */
    private Integer membercardId;

    /**
     * 评论id
     */
    private Integer commentId;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCustomRole() {
        return customRole;
    }

    public void setCustomRole(String customRole) {
        this.customRole = customRole;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Integer getMembercardId() {
        return membercardId;
    }

    public void setMembercardId(Integer membercardId) {
        this.membercardId = membercardId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
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
        Custom other = (Custom) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getPhone() == null ? other.getPhone() == null : this.getPhone().equals(other.getPhone()))
            && (this.getSex() == null ? other.getSex() == null : this.getSex().equals(other.getSex()))
            && (this.getCustomRole() == null ? other.getCustomRole() == null : this.getCustomRole().equals(other.getCustomRole()))
            && (this.getCarId() == null ? other.getCarId() == null : this.getCarId().equals(other.getCarId()))
            && (this.getMembercardId() == null ? other.getMembercardId() == null : this.getMembercardId().equals(other.getMembercardId()))
            && (this.getCommentId() == null ? other.getCommentId() == null : this.getCommentId().equals(other.getCommentId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getPhone() == null) ? 0 : getPhone().hashCode());
        result = prime * result + ((getSex() == null) ? 0 : getSex().hashCode());
        result = prime * result + ((getCustomRole() == null) ? 0 : getCustomRole().hashCode());
        result = prime * result + ((getCarId() == null) ? 0 : getCarId().hashCode());
        result = prime * result + ((getMembercardId() == null) ? 0 : getMembercardId().hashCode());
        result = prime * result + ((getCommentId() == null) ? 0 : getCommentId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", phone=").append(phone);
        sb.append(", sex=").append(sex);
        sb.append(", customRole=").append(customRole);
        sb.append(", carId=").append(carId);
        sb.append(", membercardId=").append(membercardId);
        sb.append(", commentId=").append(commentId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}