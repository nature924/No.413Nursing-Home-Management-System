package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Staff;
import com.cow.horse.entity.query.PageStaffByKeyQuery;
import com.cow.horse.entity.vo.PageStaffByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 员工表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface StaffMapper extends BaseMapper<Staff> {
    /**
     * 根据关键字查询员工列表
     *
     * @param keyQuery
     * @return
     */
    List<PageStaffByKeyVo> listStaffByKey(@Param("keyQuery") PageStaffByKeyQuery keyQuery);
}
