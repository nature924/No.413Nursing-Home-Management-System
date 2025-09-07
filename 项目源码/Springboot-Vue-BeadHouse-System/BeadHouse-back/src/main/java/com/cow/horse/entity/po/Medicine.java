package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 药品表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Medicine extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 药品名称
     */
    private String name;

    /**
     * 药品类别
     */
    private String type;

    /**
     * 药品规格
     */
    private String specification;

    /**
     * 药品剂型
     */
    private String dosageForm;

    /**
     * 生产厂家
     */
    private String manufacturer;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
