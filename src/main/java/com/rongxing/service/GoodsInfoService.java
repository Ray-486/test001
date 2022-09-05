package com.rongxing.service;

import com.rongxing.bean.GoodsInfo;

import java.util.Date;
import java.util.List;

/**
 * 商品管理 业务逻辑层 接口
 * 添加 selectGoodsInfoAll 方法
 * 添加 insertGoodsInfo 方法
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
public interface GoodsInfoService {
    /**
     * 搜索所有商品方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-05
     */
    List<GoodsInfo> selectGoodsInfoAll();

    /**
     * 增加商品的方法
     * @author 廖宇星 Ray
     * @date 2022-09-05
     * @param goodsname 商品名称
     * @param marketprice 市场价
     * @param realprice 优惠价
     * @param num 库存
     * @param lastupdatetime 最后修改时间
     * @return 是否添加成功
     */
    boolean insertGoodsInfo(String goodsname, Double marketprice, Double realprice, Integer num, Date lastupdatetime);

}
