package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 楼栋表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Building extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 楼栋名称
     */
    private String name;

    /**
     * 楼层数量
     */
    private Integer floorNum;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
