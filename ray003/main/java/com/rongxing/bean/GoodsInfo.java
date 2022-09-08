package com.rongxing.bean;


import java.util.Date;

/**
 * GoodsInfo 实体类
 * 添加 toString 方法
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
public class GoodsInfo {
    private Long id;

    private String goodssn;

    private String goodsname;

    private Double marketprice;

    private Double realprice;

    private Integer state;

    private Integer num;

    private String unit;

    private Date createtime;

    private Date lastupdatetime;

    private String createdby;

    public GoodsInfo() {
    }

    public GoodsInfo(Long id, String goodssn,
                     String goodsname, Double marketprice,
                     Double realprice, Integer state, Integer num,
                     String unit, Date createtime, Date lastupdatetime, String createdby) {
        this.id = id;
        this.goodssn = goodssn;
        this.goodsname = goodsname;
        this.marketprice = marketprice;
        this.realprice = realprice;
        this.state = state;
        this.num = num;
        this.unit = unit;
        this.createtime = createtime;
        this.lastupdatetime = lastupdatetime;
        this.createdby = createdby;
    }

    /**
     * @author 廖宇星 Ray
     * @date 2022-09-05
     * @param goodsname
     * @param marketprice
     * @param realprice
     * @param num
     * @param lastupdatetime
     */
    public GoodsInfo(String goodsname, Double marketprice, Double realprice, Integer num, Date lastupdatetime) {
        this.goodsname = goodsname;
        this.marketprice = marketprice;
        this.realprice = realprice;
        this.num = num;
        this.lastupdatetime = lastupdatetime;
    }
    //    以下为自动生成

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGoodssn() {
        return goodssn;
    }

    public void setGoodssn(String goodssn) {
        this.goodssn = goodssn == null ? null : goodssn.trim();
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public Double getMarketprice() {
        return marketprice;
    }

    public void setMarketprice(Double marketprice) {
        this.marketprice = marketprice;
    }

    public Double getRealprice() {
        return realprice;
    }

    public void setRealprice(Double realprice) {
        this.realprice = realprice;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getLastupdatetime() {
        return lastupdatetime;
    }

    public void setLastupdatetime(Date lastupdatetime) {
        this.lastupdatetime = lastupdatetime;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
    }

    @Override
    public String toString() {
        return "GoodsInfo{" +
                "id=" + id +
                ", goodssn='" + goodssn + '\'' +
                ", goodsname='" + goodsname + '\'' +
                ", marketprice=" + marketprice +
                ", realprice=" + realprice +
                ", state=" + state +
                ", num=" + num +
                ", unit='" + unit + '\'' +
                ", createtime=" + createtime +
                ", lastupdatetime=" + lastupdatetime +
                ", createdby='" + createdby + '\'' +
                '}';
    }
}