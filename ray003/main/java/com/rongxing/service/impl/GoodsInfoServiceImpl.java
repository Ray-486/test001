package com.rongxing.service.impl;

import com.rongxing.bean.GoodsInfo;

import com.rongxing.bean.GoodsInfoWithBLOBs;
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
    public List<GoodsInfo> selectGoodsInfoAll() { List<GoodsInfo> list=goodsInfoMapper.selectGoodsInfoAll();return list; }

    /**
     * 增加商品的方法
     * @author 廖宇星 Ray
     * @date 2022-09-05
     * @param record
     * @return
     */
    @Override
    public int insertGoodsInfo(GoodsInfoWithBLOBs record){
        return goodsInfoMapper.insertGoodsInfo(record);
    }

    /**
     * 方法-通过id查找商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param id
     * @return
     */
    @Override
    public GoodsInfoWithBLOBs selectByPrimaryKey(Long id) { return goodsInfoMapper.selectByPrimaryKey(id); }

    /**
     * 方法-修改商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param goodsInfo
     * @return
     */
    @Override
    public int updateGoodsInfo(GoodsInfoWithBLOBs goodsInfo){ return goodsInfoMapper.updateByPrimaryKeySelective(goodsInfo); }


    /**
     * 方法-删除商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param id
     * @return
     */
    @Override
    public int deleteByPrimaryKey(Long id){ return goodsInfoMapper.deleteByPrimaryKey(id); }

    /**
     * 按商品名查询商品的方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-07
     */
    @Override
    public List<GoodsInfo> selectGoodsInfobyGoodsName(String selectmessage) { return goodsInfoMapper.selectGoodsInfobyGoodsName(selectmessage); }

    /**
     * 分页显示商品方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-05
     */
    public List<GoodsInfo> getGoodsInfoByPage(Integer pageNum){
        return goodsInfoMapper.getGoodsInfoByPage(pageNum);
    }

    /**
     * 证商品编号是否唯一
     * @param goodsSN
     * @return 商品编号相同的个数
     * @author 廖宇星 Ray
     * @date 2022-09-07
     */
    public Integer selectGoodsCountByGoodsSN(String goodsSN){ return goodsInfoMapper.selectGoodsCountByGoodsSN(goodsSN); }

}
