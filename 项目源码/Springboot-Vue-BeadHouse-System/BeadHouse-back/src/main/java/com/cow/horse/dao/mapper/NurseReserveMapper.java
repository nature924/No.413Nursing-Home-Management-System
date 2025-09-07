package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.NurseReserve;
import com.cow.horse.entity.query.PageNurseReserveByKeyQuery;
import com.cow.horse.entity.vo.PageNurseReserveByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 护理预定表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface NurseReserveMapper extends BaseMapper<NurseReserve> {
    /**
     * 根据关键词获取护理预定列表
     *
     * @param keyQuery
     * @return
     */
    List<PageNurseReserveByKeyVo> listNurseReserveByKey(@Param("keyQuery") PageNurseReserveByKeyQuery keyQuery);
}
