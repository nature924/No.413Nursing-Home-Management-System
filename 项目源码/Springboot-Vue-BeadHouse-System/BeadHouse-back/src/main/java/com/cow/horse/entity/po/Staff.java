package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 员工表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Staff extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 角色编号
     */
    private Long roleId;

    /**
     * 姓名
     */
    private String name;

    /**
     * 身份证号
     */
    private String idNum;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 性别(男/女)
     */
    private String sex;

    /**
     * 电话
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 密码
     */
    private String pass;

    /**
     * 头像
     */
    private String avator;

    /**
     * 地址
     */
    private String address;

    /**
     * 离职状态（Y/N）
     */
    private String leaveFlag;


}
