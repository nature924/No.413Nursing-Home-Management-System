package com.cow.horse.entity.po;

import com.cow.horse.entity.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 权限表
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Auth extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 父级编号
     */
    private Long parentId;

    /**
     * 权限标题
     */
    private String title;

    /**
     * 权限名称
     */
    private String name;

    /**
     * 权限path
     */
    private String path;

    /**
     * 权限图标
     */
    private String icon;

    /**
     * 权限url
     */
    private String url;

    /**
     * 权限类别（MENU/BTN）
     */
    private String type;

    /**
     * 权限请求方式（GET/POST/PUT/DELETE）
     */
    private String method;


}
