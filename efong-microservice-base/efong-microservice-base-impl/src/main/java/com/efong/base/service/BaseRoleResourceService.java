package com.efong.base.service;


import com.efong.base.vm.BaseRoleResourceSaveVM;

public interface BaseRoleResourceService {

    void authorize(BaseRoleResourceSaveVM roleResourceSaveVM);
}
