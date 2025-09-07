package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 入库登记表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class WarehouseRecord extends BaseEntity {

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
     * 物资来源
     */
    private String source;

    /**
     * 入库时间
     */
    private Date warehouseDate;

    /**
     * 入库状态
     */
    private String warehouseFlag;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
