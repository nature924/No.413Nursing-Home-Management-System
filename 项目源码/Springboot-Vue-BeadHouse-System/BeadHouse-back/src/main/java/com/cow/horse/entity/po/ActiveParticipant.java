package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 活动参与者表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ActiveParticipant extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 活动编号
     */
    private Long activeId;

    /**
     * 老人编号
     */
    private Long elderId;


}
