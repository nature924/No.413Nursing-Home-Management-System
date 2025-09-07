package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * <p>
 * 出库登记表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class OutboundRecord extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 仓库编号
     */
    private Long warehouseId;

    /**
     * 经办人编号
     */
    private Long staffId;

    /**
     * 领用人编号
     */
    private Long recipientId;

    /**
     * 领用人类型
     */
    private String recipientType;

    /**
     * 物资去向
     */
    private String materialUse;

    /**
     * 出库时间
     */
    private Date outboundDate;

    /**
     * 出库状态
     */
    private String outboundFlag;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
