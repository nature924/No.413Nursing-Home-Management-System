package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 事故登记表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Accident extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 值班护工编号
     */
    private Long staffId;

    /**
     * 发生时间
     */
    private Date occurDate;

    /**
     * 事故描述
     */
    private String description;

    /**
     * 事故图片
     */
    private String picture;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
