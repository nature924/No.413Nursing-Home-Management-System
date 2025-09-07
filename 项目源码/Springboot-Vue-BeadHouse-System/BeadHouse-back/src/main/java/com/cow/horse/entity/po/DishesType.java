package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 菜品分类表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class DishesType extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 菜品类别名称
     */
    private String name;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
