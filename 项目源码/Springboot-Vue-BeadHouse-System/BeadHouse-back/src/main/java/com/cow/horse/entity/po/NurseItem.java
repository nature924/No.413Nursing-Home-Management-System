package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 护理项目表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class NurseItem extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 护理等级编号
     */
    private Long gradeId;

    /**
     * 服务项目编号
     */
    private Long serviceId;


}
