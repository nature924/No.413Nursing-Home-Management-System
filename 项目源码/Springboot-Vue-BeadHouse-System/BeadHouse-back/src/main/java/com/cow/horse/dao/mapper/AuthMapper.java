package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Auth;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 权限表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface AuthMapper extends BaseMapper<Auth> {
    /**
     * 根据角色编号查询权限信息
     *
     * @param roleId
     * @return
     */
    List<Auth> listAuthByRoleId(@Param("roleId") Long roleId);
}
