package com.efong.base.controller;

import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.api.v1.BaseRoleResourceRestService;
import com.efong.base.service.BaseRoleResourceService;
import com.efong.base.vm.BaseRoleResourceSaveVM;
import com.efong.framework.utils.Message;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseRoleResourceController implements BaseRoleResourceRestService {

    @Autowired
    BaseRoleResourceService baseRoleResourceService;

    @Override
    @RequiresPermissions(value={"baseRoleResource_authorize","administrator"},logical= Logical.OR)
    public Message<String> authorize(BaseRoleResourceSaveVM roleResourceSaveVM) {
        baseRoleResourceService.authorize(roleResourceSaveVM);
        return Message.ok(MicroserviceBaseConstants.SUCCESS);
    }
}
