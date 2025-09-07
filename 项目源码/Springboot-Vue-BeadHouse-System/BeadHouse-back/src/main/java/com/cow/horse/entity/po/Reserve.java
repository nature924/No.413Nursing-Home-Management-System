package com.cow.horse.entity.po;

import java.math.BigDecimal;
import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 预定表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Reserve extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 销售人员编号
     */
    private Long staffId;

    /**
     * 交款人姓名
     */
    private String name;

    /**
     * 交款人电话
     */
    private String phone;

    /**
     * 预定到期时间
     */
    private Date dueDate;

    /**
     * 定金
     */
    private BigDecimal deposit;

    /**
     * 预定状态
     */
    private String reserveFlag;


}
