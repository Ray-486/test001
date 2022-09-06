package com.rongxing.mapper;

import com.rongxing.bean.GoodsPackAffiliated;

public interface GoodsPackAffiliatedMapper {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsPackAffiliated record);

    int insertSelective(GoodsPackAffiliated record);

    GoodsPackAffiliated selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsPackAffiliated record);

    int updateByPrimaryKey(GoodsPackAffiliated record);
}