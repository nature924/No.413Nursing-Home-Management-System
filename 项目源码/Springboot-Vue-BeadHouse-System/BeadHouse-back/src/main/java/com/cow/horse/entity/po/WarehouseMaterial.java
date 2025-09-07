package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 入库物资表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class WarehouseMaterial extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 入库登记编号
     */
    private Long warehouseRecordId;

    /**
     * 物资编号
     */
    private Long materialId;

    /**
     * 库存数量
     */
    private Integer warehouseNum;

    /**
     * 库存量
     */
    private Integer inventory;

    /**
     * 生产日期
     */
    private Date productDate;

    /**
     * 有效期
     */
    private Date expireDate;


}
