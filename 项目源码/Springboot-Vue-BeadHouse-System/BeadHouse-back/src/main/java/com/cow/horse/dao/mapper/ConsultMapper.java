package com.cow.horse.dao.mapper;

import com.cow.horse.entity.query.GetConsultByConsultIdAndElderIdQuery;
import com.cow.horse.entity.vo.GetConsultByConsultIdAndElderIdVo;
import com.cow.horse.entity.vo.PageConsultByKeyVo;
import com.cow.horse.entity.po.Consult;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageConsultByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 咨询人表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface ConsultMapper extends BaseMapper<Consult> {
    /**
     * 根据搜索关键字查询咨询信息
     *
     * @param keyQuery
     * @param startTime
     * @param endTime
     * @return
     */
    List<PageConsultByKeyVo> listConsultByKey(@Param("keyQuery") PageConsultByKeyQuery keyQuery,
                                              @Param("startTime") Date startTime,
                                              @Param("endTime") Date endTime);

    /**
     * 根据咨询人编号和老人编号查询咨询信息
     *
     * @param idQuery
     * @return
     */
    List<GetConsultByConsultIdAndElderIdVo> getConsultByConsultIdAndElderId(@Param("idQuery") GetConsultByConsultIdAndElderIdQuery idQuery);
}
