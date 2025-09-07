package com.cow.horse.entity.po;

import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableName;
import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 订餐表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = "`order`")
public class Order extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 送餐人编号
     */
    private Long staffId;

    /**
     * 送餐时间
     */
    private Date deliverDishesDate;

    /**
     * 就餐时间
     */
    private Date dineDate;

    /**
     * 就餐方式
     */
    private String dineType;

    /**
     * 支付总额
     */
    private BigDecimal payAmount;

    /**
     * 订单状态
     */
    private String orderFlag;


}
