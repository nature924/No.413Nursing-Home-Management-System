package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 咨询人表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Consult extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 来源渠道编号
     */
    private Long sourceId;

    /**
     * 接待人编号
     */
    private Long staffId;

    /**
     * 咨询人姓名
     */
    private String name;

    /**
     * 咨询人电话
     */
    private String phone;

    /**
     * 与老人关系
     */
    private String relation;

    /**
     * 咨询日期
     */
    private Date consultDate;

    /**
     * 咨询内容
     */
    private String consultContent;


}
