package com.rongxing.service;

import com.rongxing.bean.GoodsInfo;
import com.rongxing.bean.GoodsInfoWithBLOBs;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
     * @param record
     * @return
     */
    int insertGoodsInfo(GoodsInfoWithBLOBs record);

    /**
     * 方法-通过id查找商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param id
     * @return
     */
    GoodsInfoWithBLOBs selectByPrimaryKey(Long id);

    /**
     * 方法-修改商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param goodsInfo
     * @return
     */
     int updateGoodsInfo(GoodsInfoWithBLOBs goodsInfo);

    /**
     * 方法-删除商品
     * @author 廖宇星 Ray
     * @date 2022-09-06
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Long id);

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

}
