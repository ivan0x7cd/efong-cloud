package com.efong.base.service;

import com.efong.base.vm.*;
import com.github.pagehelper.PageInfo;

public interface BaseRoleService {
    void saveRole(BaseRoleCreateVM role);

    void updateRole(BaseRoleUpdateVM roleUpdateVM);

    void deleteRole(String roleIds);

    PageInfo<BaseRoleListVM> roleList(BaseRoleSearchVM search);

    BaseRoleVM detail(String roleId);
}
