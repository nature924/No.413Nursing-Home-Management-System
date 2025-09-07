package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 护工小组表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class NurseGroup extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 护工小组组长编号
     */
    private Long staffId;

    /**
     * 护工小组名称
     */
    private String name;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
