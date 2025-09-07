package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 床位表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Bed extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 房间编号
     */
    private Long roomId;

    /**
     * 床位名称
     */
    private String name;

    /**
     * 床位状态(空闲/预定/入住/退住审核)
     */
    private String bedFlag;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
