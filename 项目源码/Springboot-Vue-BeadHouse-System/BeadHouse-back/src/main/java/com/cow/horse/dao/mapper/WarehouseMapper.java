package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Warehouse;
import com.cow.horse.entity.query.PageWarehouseByKeyQuery;
import com.cow.horse.entity.vo.PageWarehouseByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 仓库表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface WarehouseMapper extends BaseMapper<Warehouse> {
    /**
     * 根据关键字获取仓库列表
     *
     * @param keyQuery
     * @return
     */
    List<PageWarehouseByKeyVo> listWarehouseByKey(@Param("keyQuery") PageWarehouseByKeyQuery keyQuery);
}
