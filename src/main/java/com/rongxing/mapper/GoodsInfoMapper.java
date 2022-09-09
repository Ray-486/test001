package com.rongxing.mapper;

import com.rongxing.bean.GoodsInfo;
import com.rongxing.bean.GoodsInfoWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 数据访问层 dao
 * 商品信息 GoodsInfo
 * 添加 selectGoodsInfoAll 方法
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
public interface GoodsInfoMapper {


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
     * @param record
     * @return
     */
    int insertGoodsInfo(GoodsInfoWithBLOBs record);


    /**
     * 按商品名查询商品的方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-07
     */
    List<GoodsInfo> selectGoodsInfobyGoodsName(String selectmessage);

    /**
     * 分页显示商品方法
     * @return 返回GoodsInfo类
     * @author 廖宇星 Ray
     * @date 2022-09-05
     */
    List<GoodsInfo> getGoodsInfoByPage(Integer pageNum);

    /**
     * 证商品编号是否唯一
     * @param goodsSN
     * @return 商品编号相同的个数
     * @author 廖宇星 Ray
     * @date 2022-09-07
     */
    Integer selectGoodsCountByGoodsSN(String goodsSN);

    // 以下为逆向工程自动生成
    int deleteByPrimaryKey(Long id);

    int insert(GoodsInfoWithBLOBs record);

    int insertSelective(GoodsInfoWithBLOBs record);

    GoodsInfoWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsInfoWithBLOBs record);

    /**
     * 更新的方法 自动生成
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(GoodsInfoWithBLOBs record);

    int updateByPrimaryKey(GoodsInfo record);
}