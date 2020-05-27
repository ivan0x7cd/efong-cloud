package com.efong.base.mapper.extend;

import com.efong.base.domain.basic.BaseRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseRoleExtendMapper {

    void updateRole(@Param("baseRole") BaseRole baseRole);

    void deleteRole(@Param("list") List<String> list);
}
