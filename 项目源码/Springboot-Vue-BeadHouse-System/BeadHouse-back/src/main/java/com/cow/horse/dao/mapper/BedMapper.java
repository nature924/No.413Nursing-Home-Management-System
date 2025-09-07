package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Bed;
import com.cow.horse.entity.vo.GetBedByIdVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 * 床位表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface BedMapper extends BaseMapper<Bed> {
    /**
     * 根据编号获取床位信息
     *
     * @param bedId
     * @return
     */
    GetBedByIdVo getBedById(@Param("bedId") Long bedId);
}
