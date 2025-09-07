package com.cow.horse.entity.po;

import java.math.BigDecimal;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 老人表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Elder extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 护理等级编号
     */
    private Long nursingGradeId;

    /**
     * 餐饮套餐编号
     */
    private Long cateringSetId;

    /**
     * 床位编号
     */
    private Long bedId;

    /**
     * 老人姓名
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
     * 老人电话
     */
    private String phone;

    /**
     * 地址
     */
    private String address;

    /**
     * 余额
     */
    private BigDecimal balance;

    /**
     * 入住状态
     */
    private String checkFlag;


}
