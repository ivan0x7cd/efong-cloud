package com.efong.base.service;

import com.efong.base.vm.BaseRoleAuthorizeListVM;
import com.efong.base.vm.BaseRoleVM;
import com.efong.base.vm.BaseUserRoleSaveVM;

import java.util.List;

public interface BaseUserRoleService {

    void authorize(BaseUserRoleSaveVM baseUserRoleSaveVM);

    List<BaseRoleVM> roleOfUser(String userId);

    List<BaseRoleAuthorizeListVM> roleAuthorizeList(String userId);
}
