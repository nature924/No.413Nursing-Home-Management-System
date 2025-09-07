package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Outward;
import com.cow.horse.entity.vo.GetOutwardByIdVo;
import com.cow.horse.entity.vo.PageOutwardByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageOutwardByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 外出登记表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface OutwardMapper extends BaseMapper<Outward> {
    /**
     * 根据关键字获取外出登记
     *
     * @param keyQuery
     * @param startTime
     * @param endTime
     * @return
     */
    List<PageOutwardByKeyVo> listOutwardByKey(@Param("keyQuery") PageOutwardByKeyQuery keyQuery,
                                              @Param("startTime") Date startTime,
                                              @Param("endTime") Date endTime);

    /**
     * 根据编号获取外出登记
     *
     * @param outwardId
     * @return
     */
    GetOutwardByIdVo getOutwardById(@Param("outwardId") Long outwardId);
}
