package com.rongxing.service.impl;

import com.rongxing.bean.GoodsInfo;

import com.rongxing.mapper.GoodsInfoMapper;
import com.rongxing.service.GoodsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 商品管理 业务逻辑层
 * 添加 selectGoodsInfoAll 方法
 * 添加 insertGoodsInfo 方法
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
@Service
public class GoodsInfoServiceImpl implements GoodsInfoService {
    // 数据访问层对象
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;

    /**
     * 搜索所有商品方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-05
     */
    @Override
    public List<GoodsInfo> selectGoodsInfoAll() {
        List<GoodsInfo> list=goodsInfoMapper.selectGoodsInfoAll();
        return list;
    }

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
    @Override
    public boolean insertGoodsInfo(String goodsname, Double marketprice, Double realprice, Integer num, Date lastupdatetime) {
        return goodsInfoMapper.insertGoodsInfo(goodsname, marketprice, realprice,  num,  lastupdatetime);
    }


}
