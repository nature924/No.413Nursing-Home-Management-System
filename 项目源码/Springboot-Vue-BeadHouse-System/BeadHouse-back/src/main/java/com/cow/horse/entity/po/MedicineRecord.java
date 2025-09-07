package com.cow.horse.entity.po;

import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 用药登记表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class MedicineRecord extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 药品缴存信息编号
     */
    private Long depositInfoId;

    /**
     * 用药时间（早/中/晚）
     */
    private String medicineTime;

    /**
     * 用药日期
     */
    private Date medicineDate;


}
