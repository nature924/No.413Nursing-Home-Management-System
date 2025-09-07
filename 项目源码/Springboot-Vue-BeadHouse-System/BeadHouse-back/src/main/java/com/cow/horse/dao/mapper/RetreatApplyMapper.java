package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.RetreatApply;
import com.cow.horse.entity.vo.PageRetreatByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageRetreatApplyQuery;
import com.cow.horse.entity.query.PageRetreatAuditQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 退住申请表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface RetreatApplyMapper extends BaseMapper<RetreatApply> {
    /**
     * 根据搜索关键字查询退住申请信息
     *
     * @param keyQuery
     * @return
     */
    List<PageRetreatByKeyVo> listRetreatApplyByKey(@Param("keyQuery") PageRetreatApplyQuery keyQuery);

    /**
     * 根据搜索关键字查询退住申请信息
     *
     * @param keyQuery
     * @return
     */
    List<PageRetreatByKeyVo> listRetreatAuditByKey(@Param("keyQuery") PageRetreatAuditQuery keyQuery);
}
