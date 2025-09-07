package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Contract;
import com.cow.horse.entity.vo.ExpireContractVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 合同表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface ContractMapper extends BaseMapper<Contract> {
    /**
     * 获取已过期和即将到期的合同
     *
     * @param endTime
     * @return
     */
    List<ExpireContractVo> listExpireContract(@Param("endTime") Date endTime);
}
