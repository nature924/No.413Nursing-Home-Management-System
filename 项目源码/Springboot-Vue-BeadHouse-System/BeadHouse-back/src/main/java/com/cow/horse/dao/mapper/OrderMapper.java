package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Order;
import com.cow.horse.entity.vo.GetOrderByIdVo;
import com.cow.horse.entity.vo.PageOrderByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageOrderByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 订餐表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface OrderMapper extends BaseMapper<Order> {
    /**
     * 根据关键字查询点餐列表
     *
     * @param keyQuery
     * @return
     */
    List<PageOrderByKeyVo> listOrderByKey(@Param("keyQuery") PageOrderByKeyQuery keyQuery);

    /**
     * 根据订单编号获取信息
     *
     * @param orderId
     * @return
     */
    GetOrderByIdVo getOrderById(@Param("orderId") Long orderId);
}
