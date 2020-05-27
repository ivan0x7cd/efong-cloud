package com.efong.base.mapper.basic;

import com.efong.base.domain.basic.BaseUser;
import java.util.List;

public interface BaseUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(BaseUser record);

    BaseUser selectByPrimaryKey(String id);

    List<BaseUser> selectAll();

    int updateByPrimaryKey(BaseUser record);
}