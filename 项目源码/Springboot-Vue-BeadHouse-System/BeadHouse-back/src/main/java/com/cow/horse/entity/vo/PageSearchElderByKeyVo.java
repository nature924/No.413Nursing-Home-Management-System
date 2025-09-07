package com.cow.horse.entity.vo;

import com.cow.horse.entity.query.OperateIntentionQuery;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(value = "分页搜索老人响应实体")
public class PageSearchElderByKeyVo extends OperateIntentionQuery {
    @ApiModelProperty(value = "序号", example = "1")
    private Long rank;
}
