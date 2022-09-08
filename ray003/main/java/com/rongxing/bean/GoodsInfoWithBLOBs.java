package com.rongxing.bean;

import java.util.Date;
/**
 * GoodsInfoWithBLOBs 实体类 继承 GoodsInfo
 * 添加 toString 方法
 * 添加构造函数
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
public class GoodsInfoWithBLOBs extends GoodsInfo {
    private String goodsformat;

    private String note;

    public GoodsInfoWithBLOBs() {
    }

    public GoodsInfoWithBLOBs(String goodsformat, String note) {
        this.goodsformat = goodsformat;
        this.note = note;
    }

    public GoodsInfoWithBLOBs(Long id, String goodssn, String goodsname, Double marketprice, Double realprice, Integer state, Integer num, String unit, Date createtime, Date lastupdatetime, String createdby, String goodsformat, String note) {
        super(id, goodssn, goodsname, marketprice, realprice, state, num, unit, createtime, lastupdatetime, createdby);
        this.goodsformat = goodsformat;
        this.note = note;
    }

    public GoodsInfoWithBLOBs(String goodsname, Double marketprice, Double realprice, Integer num, Date lastupdatetime, String goodsformat, String note) {
        super(goodsname, marketprice, realprice, num, lastupdatetime);
        this.goodsformat = goodsformat;
        this.note = note;
    }

    @Override
    public String toString() {
        return "GoodsInfoWithBLOBs{" +
                "goodsformat='" + goodsformat + '\'' +
                ", note='" + note + '\'' +
                '}';
    }

    public String getGoodsformat() {
        return goodsformat;
    }

    public void setGoodsformat(String goodsformat) {
        this.goodsformat = goodsformat == null ? null : goodsformat.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
}