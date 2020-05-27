package com.efong.base.mapper.extend;

import com.efong.base.domain.basic.BaseRoleResourceR;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseRoleResourceRExtendMapper {
    void batchInsert(@Param("list") List<BaseRoleResourceR> list);

    void deleteByRoleIds(@Param("list")List<String> roleIds);
}