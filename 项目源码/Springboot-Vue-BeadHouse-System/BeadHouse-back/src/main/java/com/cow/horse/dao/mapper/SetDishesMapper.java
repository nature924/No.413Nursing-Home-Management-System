package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.SetDishes;
import com.cow.horse.entity.vo.GetCateringSetByIdVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 套餐食物表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface SetDishesMapper extends BaseMapper<SetDishes> {
    /**
     * 根据套餐编号获取食物信息并设值
     *
     * @param setId
     * @return
     */
    List<GetCateringSetByIdVo.SetDishesVo> listSetDishesBySetId(@Param("setId") Long setId);
}
