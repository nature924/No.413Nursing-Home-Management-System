package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Label;
import com.cow.horse.entity.vo.GetElderLabelByIdLabelVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 标签表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface LabelMapper extends BaseMapper<Label> {
    /**
     * 根据老人编号获取标签
     *
     * @param elderId
     * @return
     */
    List<GetElderLabelByIdLabelVo> listElderLabelById(@Param("elderId") Long elderId);
}
