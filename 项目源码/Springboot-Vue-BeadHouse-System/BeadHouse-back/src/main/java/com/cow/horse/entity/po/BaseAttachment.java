package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 附件信息表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class BaseAttachment extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 上传后文件名
     */
    private String name;

    /**
     * 文件真实名称
     */
    private String realName;

    /**
     * 文件绝对路径
     */
    private String path;

    /**
     * url相对路径
     */
    private String url;

    /**
     * 文件后缀
     */
    private String suff;

    /**
     * 文件大小 B
     */
    private Long size;

    /**
     * 删除状态(Y/N)
     */
    private String delFlag;


}
