package com.cow.horse.entity.po;

import java.math.BigDecimal;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 护理预定表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class NurseReserve extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 服务人编号
     */
    private Long staffId;

    /**
     * 服务项目名称
     */
    private String serviceName;

    /**
     * 所需时间
     */
    private Integer needDate;

    /**
     * 服务费用
     */
    private BigDecimal servicePrice;

    /**
     * 收费方式
     */
    private String chargeMethod;

    /**
     * 服务次数
     */
    private Integer frequency;

    /**
     * 支付总额
     */
    private BigDecimal payAmount;

    /**
     * 订单状态
     */
    private String orderFlag;

    /**
     * 护理时间
     */
    private Date nurseDate;


}
