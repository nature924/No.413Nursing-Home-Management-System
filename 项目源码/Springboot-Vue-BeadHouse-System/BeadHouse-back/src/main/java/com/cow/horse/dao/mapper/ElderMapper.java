package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Elder;
import com.cow.horse.entity.vo.PageDepositRechargeByKeyVo;
import com.cow.horse.entity.vo.PageElderByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cow.horse.entity.query.PageDepositRechargeByKeyQuery;
import com.cow.horse.entity.query.PageElderByKeyQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 老人表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface ElderMapper extends BaseMapper<Elder> {
    /**
     * 根据搜索关键字查询预存充值信息
     *
     * @param keyQuery
     * @return
     */
    List<PageDepositRechargeByKeyVo> listDepositRechargeByKey(@Param("keyQuery") PageDepositRechargeByKeyQuery keyQuery);

    /**
     * 根据老人编号列表批量取消预定
     *
     * @param elderIdList
     */
    void cancelReserveByElderIdList(@Param("elderIdList") List<Long> elderIdList);

    /**
     * 根据编号逻辑删除老人
     *
     * @param elderId
     */
    void deleteElderById(@Param("elderId") Long elderId);

    /**
     * 根据关键字获取长者列表
     *
     * @param keyQuery
     * @return
     */
    List<PageElderByKeyVo> listElderByKey(@Param("keyQuery") PageElderByKeyQuery keyQuery);

    /**
     * 根据编号将老人设置退住
     *
     * @param elderId
     */
    void retreatElderById(@Param("elderId") Long elderId);
}
