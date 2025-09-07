package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 回访计划表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class VisitPlan extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 回访计划标题
     */
    private String title;

    /**
     * 计划回访时间
     */
    private Date planDate;

    /**
     * 回访计划内容
     */
    private String content;

    /**
     * 计划完成时间
     */
    private Date completeDate;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
