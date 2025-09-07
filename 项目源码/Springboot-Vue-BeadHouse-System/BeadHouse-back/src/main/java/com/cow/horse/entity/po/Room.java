package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 房间表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Room extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 房间类型编号
     */
    private Long typeId;

    /**
     * 楼层编号
     */
    private Long floorId;

    /**
     * 房间名称
     */
    private String name;

    /**
     * 床位数量
     */
    private Integer bedNum;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
