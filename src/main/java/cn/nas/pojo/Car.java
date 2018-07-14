package cn.nas.pojo;

import java.io.Serializable;

/**
 * car
 * @author 
 */
public class Car implements Serializable {
    /**
     * 车id
     */
    private Integer id;

    /**
     * 车牌号
     */
    private String carNum;

    /**
     * 车品牌
     */
    private String cBrand;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarNum() {
        return carNum;
    }

    public void setCarNum(String carNum) {
        this.carNum = carNum;
    }

    public String getcBrand() {
        return cBrand;
    }

    public void setcBrand(String cBrand) {
        this.cBrand = cBrand;
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
        Car other = (Car) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getCarNum() == null ? other.getCarNum() == null : this.getCarNum().equals(other.getCarNum()))
            && (this.getcBrand() == null ? other.getcBrand() == null : this.getcBrand().equals(other.getcBrand()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getCarNum() == null) ? 0 : getCarNum().hashCode());
        result = prime * result + ((getcBrand() == null) ? 0 : getcBrand().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", carNum=").append(carNum);
        sb.append(", cBrand=").append(cBrand);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}