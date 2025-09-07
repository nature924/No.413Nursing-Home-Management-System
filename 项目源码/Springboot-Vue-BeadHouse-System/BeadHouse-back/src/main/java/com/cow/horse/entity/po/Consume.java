package com.cow.horse.entity.po;

import java.math.BigDecimal;
import java.util.Date;

import com.cow.horse.entity.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 消费记录表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Consume extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 老人编号
     */
    private Long elderId;

    /**
     * 消费类别
     */
    private String consumeType;

    /**
     * 消费金额
     */
    private BigDecimal consumeAmount;

    /**
     * 消费日期
     */
    private Date consumeDate;

}
