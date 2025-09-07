package com.cow.horse.entity.po;

import java.math.BigDecimal;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 服务项目表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ServiceItem extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 服务项目类别编号
     */
    private Long typeId;

    /**
     * 服务名称
     */
    private String name;

    /**
     * 收费方式
     */
    private String chargeMethod;

    /**
     * 次服务费用
     */
    private BigDecimal price;

    /**
     * 所需时间（分）
     */
    private Integer needDate;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
