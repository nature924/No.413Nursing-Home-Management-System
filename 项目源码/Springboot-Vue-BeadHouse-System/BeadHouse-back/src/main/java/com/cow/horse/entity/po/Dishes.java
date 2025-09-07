package com.cow.horse.entity.po;

import java.math.BigDecimal;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 菜品表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Dishes extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 菜品类别编号
     */
    private Long typeId;

    /**
     * 菜品名称
     */
    private String name;

    /**
     * 菜品价格
     */
    private BigDecimal price;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
