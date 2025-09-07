package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.NurseItem;
import com.cow.horse.entity.vo.GetNurseGradeByIdVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 护理项目表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface NurseItemMapper extends BaseMapper<NurseItem> {
    /**
     * 根据护理等级编号获取服务列表
     *
     * @param gradeId
     * @return
     */
    List<GetNurseGradeByIdVo.NurseGradeServiceVo> listGradeService(@Param("gradeId") Long gradeId);
}
