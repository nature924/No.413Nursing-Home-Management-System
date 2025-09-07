package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Material;
import com.cow.horse.entity.query.PageMaterialByKeyQuery;
import com.cow.horse.entity.vo.PageMaterialByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 物资表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface MaterialMapper extends BaseMapper<Material> {
    /**
     * 根据搜索关键字获取物资列表
     *
     * @param keyQuery
     * @return
     */
    List<PageMaterialByKeyVo> listMaterialByKey(@Param("keyQuery") PageMaterialByKeyQuery keyQuery);
}
