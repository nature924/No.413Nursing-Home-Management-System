package com.cow.horse.dao.mapper;

import com.cow.horse.entity.po.Consume;
import com.cow.horse.entity.vo.PageConsumeByKeyVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 消费记录表 Mapper 接口
 * </p>
 *
 * @author: cow
 * @date: 2024-08-10
 */
public interface ConsumeMapper extends BaseMapper<Consume> {
    /**
     * 根据搜索关键字获取消费记录
     *
     * @param elderName
     * @param startTime
     * @param endTime
     * @return
     */
    List<PageConsumeByKeyVo> listConsumeByKey(@Param("elderName") String elderName,
                                              @Param("startTime") Date startTime,
                                              @Param("endTime") Date endTime);
}
