package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 沟通记录表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class CommunicationRecord extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 记录时间
     */
    private Date recordDate;

    /**
     * 沟通记录
     */
    private String communicationRecord;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
