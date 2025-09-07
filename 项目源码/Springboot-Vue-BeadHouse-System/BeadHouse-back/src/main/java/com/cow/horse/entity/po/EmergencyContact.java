package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 紧急联系人表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class EmergencyContact extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 紧急联系人姓名
     */
    private String name;

    /**
     * 紧急联系人电话
     */
    private String phone;

    /**
     * 紧急联系人邮箱
     */
    private String email;

    /**
     * 与老人关系
     */
    private String relation;

    /**
     * 是否接收消息（Y/N）
     */
    private String receiveFlag;


}
