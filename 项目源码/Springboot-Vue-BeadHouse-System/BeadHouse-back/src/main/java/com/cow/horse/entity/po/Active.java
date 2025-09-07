package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 活动表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Active extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 活动类别编号
     */
    private Long typeId;

    /**
     * 活动主题
     */
    private String theme;

    /**
     * 活动名称
     */
    private String name;

    /**
     * 活动内容
     */
    private String content;

    /**
     * 活动地点
     */
    private String address;

    /**
     * 组织者姓名
     */
    private String organizer;

    /**
     * 组织者电话
     */
    private String phone;

    /**
     * 活动日期
     */
    private Date activeDate;

    /**
     * 活动图片
     */
    private String activePicture;

    /**
     * 删除状态（Y/N）
     */
    private String delFlag;


}
