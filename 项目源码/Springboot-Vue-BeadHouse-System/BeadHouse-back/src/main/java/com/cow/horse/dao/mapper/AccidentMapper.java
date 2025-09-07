package com.cow.horse.dao.mapper;

import com.cow.horse.entity.query.PageAccidentByKeyQuery;
import com.cow.horse.entity.vo.GetAccidentByIdVo;
import com.cow.horse.entity.vo.PageAccidentByKeyVo;
import com.cow.horse.entity.po.Accident;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 事故登记表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface AccidentMapper extends BaseMapper<Accident> {
    /**
     * 根据关键字获取事故登记列表
     *
     * @param keyQuery
     * @return
     */
    List<PageAccidentByKeyVo> listAccidentByKeyVo(@Param("keyQuery") PageAccidentByKeyQuery keyQuery);

    /**
     * 根据编号获取事故登记
     *
     * @param accidenId
     * @return
     */
    GetAccidentByIdVo getAccidentById(@Param("accidentId") Long accidenId);
}
