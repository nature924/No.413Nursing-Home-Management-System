package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.WarehouseRecord;
import com.cow.horse.entity.vo.GetWarehouseRecordByIdVo;
import com.cow.horse.entity.vo.PageWarehouseRecordByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageWarehouseRecordByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 入库登记表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface WarehouseRecordMapper extends BaseMapper<WarehouseRecord> {
    /**
     * 根据搜索关键字查询入库记录
     *
     * @param keyQuery
     * @param startTime
     * @param endTime
     * @return
     */
    List<PageWarehouseRecordByKeyVo> listWarehouseRecordByKey(@Param("keyQuery") PageWarehouseRecordByKeyQuery keyQuery,
                                                              @Param("startTime") Date startTime,
                                                              @Param("endTime") Date endTime);

    /**
     * 根据编号查询入库记录
     *
     * @param warehouseRecordId
     * @return
     */
    GetWarehouseRecordByIdVo getWarehouseRecordById(@Param("warehouseRecordId") Long warehouseRecordId);
}
