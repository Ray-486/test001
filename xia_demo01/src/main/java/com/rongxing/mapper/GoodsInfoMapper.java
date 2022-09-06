package com.rongxing.mapper;

import com.rongxing.bean.GoodsInfo;
import com.rongxing.bean.GoodsInfoWithBLOBs;

public interface GoodsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsInfoWithBLOBs record);

    int insertSelective(GoodsInfoWithBLOBs record);

    GoodsInfoWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(GoodsInfoWithBLOBs record);

    int updateByPrimaryKey(GoodsInfo record);
}