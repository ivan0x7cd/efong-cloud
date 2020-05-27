package com.efong.base.mapper.basic;

import com.efong.base.domain.basic.BaseResource;
import java.util.List;

public interface BaseResourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(BaseResource record);

    BaseResource selectByPrimaryKey(String id);

    List<BaseResource> selectAll();

    int updateByPrimaryKey(BaseResource record);
}