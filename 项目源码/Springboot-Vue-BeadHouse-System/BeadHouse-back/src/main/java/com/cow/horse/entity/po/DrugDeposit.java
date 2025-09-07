package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 药品缴存表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class DrugDeposit extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 缴存药品方式
     */
    private String mode;

    /**
     * 缴存状态
     */
    private String depositFlag;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
