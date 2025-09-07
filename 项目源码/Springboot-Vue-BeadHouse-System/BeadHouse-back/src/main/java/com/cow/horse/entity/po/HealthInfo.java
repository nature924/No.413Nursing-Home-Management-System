package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 老人健康信息表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class HealthInfo extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 自理情况
     */
    private String selfCare;

    /**
     * 视力
     */
    private String vision;

    /**
     * 听力
     */
    private String hearing;

    /**
     * 主治医院
     */
    private String hospital;

    /**
     * 主治医师
     */
    private String doctor;

    /**
     * 医院电话
     */
    private String phone;

    /**
     * 过敏药物
     */
    private String allergyDrug;

    /**
     * 病史
     */
    private String medicalHistory;

    /**
     * 主要疾病
     */
    private String majorDisease;


}
