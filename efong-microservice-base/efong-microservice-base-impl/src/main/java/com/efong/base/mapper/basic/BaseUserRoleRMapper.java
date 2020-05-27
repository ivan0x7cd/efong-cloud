package com.efong.base.mapper.basic;

import com.efong.base.domain.basic.BaseUserRoleR;
import java.util.List;

public interface BaseUserRoleRMapper {
    int deleteByPrimaryKey(String id);

    int insert(BaseUserRoleR record);

    BaseUserRoleR selectByPrimaryKey(String id);

    List<BaseUserRoleR> selectAll();

    int updateByPrimaryKey(BaseUserRoleR record);
}