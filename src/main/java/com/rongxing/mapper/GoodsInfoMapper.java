package com.rongxing.mapper;

import com.rongxing.bean.GoodsInfo;
import com.rongxing.bean.GoodsInfoWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 数据访问层
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
     * @param goodsname 商品名称
     * @param marketprice 市场价
     * @param realprice 优惠价
     * @param num 库存
     * @param lastupdatetime 最后修改时间
     * @return 是否添加成功
     */
    boolean insertGoodsInfo(@Param("goodsname") String goodsname, @Param("marketprice") Double marketprice,
                            @Param("realprice") Double realprice, @Param("num") Integer num,
                            @Param("lastupdatetime") Date lastupdatetime);




    // 以下为逆向工程自动生成
    int deleteByPrimaryKey(Long id);

    int insert(GoodsInfoWithBLOBs record);

    int insertSelective(GoodsInfoWithBLOBs record);

    GoodsInfoWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(GoodsInfoWithBLOBs record);

    int updateByPrimaryKey(GoodsInfo record);
}