package com.rongxing.mapper;

import com.rongxing.bean.GoodsPack;

public interface GoodsPackMapper {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsPack record);

    int insertSelective(GoodsPack record);

    GoodsPack selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsPack record);

    int updateByPrimaryKeyWithBLOBs(GoodsPack record);

    int updateByPrimaryKey(GoodsPack record);
}