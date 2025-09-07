package com.cow.horse.entity.po;

import java.math.BigDecimal;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 房间类型表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class RoomType extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 房间类型名称
     */
    private String name;

    /**
     * 月房间费用
     */
    private BigDecimal monthPrice;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
