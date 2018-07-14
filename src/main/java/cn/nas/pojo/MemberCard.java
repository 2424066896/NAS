package cn.nas.pojo;

import java.io.Serializable;

/**
 * member_card
 * @author 
 */
public class MemberCard implements Serializable {
    /**
     * 主键id
     */
    private Integer id;

    /**
     * 卡片序号
     */
    private String cardNum;

    /**
     * 卡片类型
     */
    private String cardType;

    /**
     * 卡片余额
     */
    private Integer cardBalance;

    /**
     * 卡片折扣
     */
    private double cardDiscount;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public double getCardBalance() {
        return cardBalance;
    }

    public void setCardBalance(Integer cardBalance) {
        this.cardBalance = cardBalance;
    }

    public double getCardDiscount() {
        return cardDiscount;
    }

    public void setCardDiscount(double cardDiscount) {
        this.cardDiscount = cardDiscount;
    }


    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", cardNum=").append(cardNum);
        sb.append(", cardType=").append(cardType);
        sb.append(", cardBalance=").append(cardBalance);
        sb.append(", cardDiscount=").append(cardDiscount);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}