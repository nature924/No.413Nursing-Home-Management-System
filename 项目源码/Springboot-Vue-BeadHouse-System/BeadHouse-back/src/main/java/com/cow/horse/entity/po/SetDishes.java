package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 套餐食物表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SetDishes extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 餐饮套餐编号
     */
    private Long setId;

    /**
     * 菜品食物编号
     */
    private Long dishesId;


}
