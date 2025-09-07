package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Active;
import com.cow.horse.entity.vo.PageActiveByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageActiveByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 活动表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-101
 */
public interface ActiveMapper extends BaseMapper<Active> {
    /**
     * 根据关键词查询活动
     *
     * @param keyQuery
     * @param startTime
     * @param endTime
     * @return
     */
    List<PageActiveByKeyVo> listActiveByKey(@Param("keyQuery") PageActiveByKeyQuery keyQuery,
                                            @Param("startTime") Date startTime,
                                            @Param("endTime") Date endTime);
}
