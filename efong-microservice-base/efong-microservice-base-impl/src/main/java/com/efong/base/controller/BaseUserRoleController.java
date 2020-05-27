package com.efong.base.controller;
import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.api.v1.BaseUserRoleRestService;
import com.efong.base.service.BaseUserRoleService;
import com.efong.base.vm.BaseRoleAuthorizeListVM;
import com.efong.base.vm.BaseRoleVM;
import com.efong.base.vm.BaseUserRoleSaveVM;
import com.efong.framework.utils.Message;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class BaseUserRoleController implements BaseUserRoleRestService {

    @Autowired
    BaseUserRoleService baseUserRoleService;

    @Override
    @RequiresPermissions(value={"baseUserRole_authorize","administrator"},logical= Logical.OR)
    public Message<String> authorize(BaseUserRoleSaveVM baseUserRoleSaveVM) {
        baseUserRoleService.authorize(baseUserRoleSaveVM);
        return Message.ok(MicroserviceBaseConstants.SUCCESS);
    }

    @Override
    @RequiresPermissions(value={"baseUserRole_roleOfUser","administrator"},logical= Logical.OR)
    public Message<List<BaseRoleVM>> roleOfUser(String userId) {
        return Message.ok(baseUserRoleService.roleOfUser(userId));
    }

    @Override
    @RequiresPermissions(value={"baseUserRole_roleAuthorizeList","administrator"},logical= Logical.OR)
    public Message<List<BaseRoleAuthorizeListVM>> roleAuthorizeList(String userId) {
        return Message.ok(baseUserRoleService.roleAuthorizeList(userId));
    }
}
