package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 出库物资表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class OutboundMaterial extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 出库登记编号
     */
    private Long outboundRecordId;

    /**
     * 入库物资编号
     */
    private Long warehouseMaterialId;

    /**
     * 物资编号
     */
    private Long materialId;

    /**
     * 出库数量
     */
    private Integer outboundNum;


}
