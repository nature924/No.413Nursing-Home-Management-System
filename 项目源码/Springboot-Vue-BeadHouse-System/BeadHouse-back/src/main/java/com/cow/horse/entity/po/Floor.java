package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 楼层表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Floor extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 楼栋编号
     */
    private Long buildingId;

    /**
     * 楼层名称
     */
    private String name;

    /**
     * 房间数量
     */
    private Integer roomNum;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
