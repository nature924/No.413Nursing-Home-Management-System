package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 来访登记表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Visit extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 来访者姓名
     */
    private String name;

    /**
     * 来访者电话
     */
    private String phone;

    /**
     * 与老人关系
     */
    private String relation;

    /**
     * 来访时间
     */
    private Date visitDate;

    /**
     * 离开时间
     */
    private Date leaveDate;

    /**
     * 来访者人数
     */
    private Integer visitNum;

    /**
     * 来访状态
     */
    private String visitFlag;

    /**
     * 删除状态
     */
    private String delFlag;


}
