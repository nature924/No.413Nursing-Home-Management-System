package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 合同表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Contract extends BaseEntity {

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
     * 合同签订日期
     */
    private Date signDate;

    /**
     * 合同开始日期
     */
    private Date startDate;

    /**
     * 合同结束日期
     */
    private Date endDate;


}
