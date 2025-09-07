package com.cow.horse.dao.mapper;

import com.cow.horse.entity.base.DropDown;
import com.cow.horse.entity.po.OutboundMaterial;
import com.cow.horse.entity.vo.GetOutboundRecordByIdVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 出库物资表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface OutboundMaterialMapper extends BaseMapper<OutboundMaterial> {
    /**
     * 根据出库记录编号列表获取出库物资列表
     *
     * @param outboundRecordIdList
     * @return
     */
    List<DropDown> listOutboundMaterialByOutboundRecordIdList(@Param("outboundRecordIdList") List<Long> outboundRecordIdList);

    /**
     * 根据出库记录编号获取出库物资列表
     *
     * @param outboundRecordId
     * @return
     */
    List<GetOutboundRecordByIdVo.GetOutboundMaterialByIdVo> listOutboundMaterialByWarehouseRecordId(@Param("outboundRecordId") Long outboundRecordId);
}
