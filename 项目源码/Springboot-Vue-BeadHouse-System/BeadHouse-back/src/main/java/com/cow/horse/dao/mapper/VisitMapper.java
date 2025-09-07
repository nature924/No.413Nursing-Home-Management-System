package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Visit;
import com.cow.horse.entity.vo.GetVisitByIdVo;
import com.cow.horse.entity.vo.PageVisitByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageVisitByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 来访登记表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface VisitMapper extends BaseMapper<Visit> {
    /**
     * 根据关键字获取来访登记
     *
     * @param keyQuery
     * @return
     */
    List<PageVisitByKeyVo> listVisitByKey(@Param("keyQuery") PageVisitByKeyQuery keyQuery);

    /**
     * 根据编号获取来访登记
     *
     * @param visitId
     * @return
     */
    GetVisitByIdVo getVisitById(@Param("visitId") Long visitId);
}
