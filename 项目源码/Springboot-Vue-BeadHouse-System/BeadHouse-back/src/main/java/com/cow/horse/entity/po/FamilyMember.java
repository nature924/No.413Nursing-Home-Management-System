package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 老人家属表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class FamilyMember extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 家属姓名
     */
    private String name;

    /**
     * 身份证号
     */
    private String idNum;

    /**
     * 家属电话
     */
    private String phone;

    /**
     * 家属邮箱
     */
    private String email;

    /**
     * 地址
     */
    private String address;

    /**
     * 与老人关系
     */
    private String relation;

    /**
     * 是否接收消息（Y/N）
     */
    private String receiveFlag;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
