package com.efong.base.controller;
import com.efong.base.api.v1.BaseResourceRestService;
import com.efong.base.service.BaseResourceService;
import com.efong.base.vm.BaseResourceTreeVM;
import com.efong.base.vm.BaseResourceVM;
import com.efong.framework.utils.Message;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class BaseRresourceController implements BaseResourceRestService {

    @Autowired
    private BaseResourceService resourceService;

    @Override
    @RequiresAuthentication
    @RequiresPermissions(value={"baseResource_indexResource","administrator"},logical= Logical.OR)
    public Message<List<BaseResourceVM>> indexResource() {
        return Message.ok(resourceService.indexResource());
    }


    @Override
    @RequiresAuthentication
    @RequiresPermissions(value={"baseResource_resourcesInModule","administrator"},logical= Logical.OR)
    public Message<List<BaseResourceVM>> resourcesInModule(String moduleCode) {
        return Message.ok(resourceService.resourcesInModule(moduleCode));
    }

    @Override
    @RequiresAuthentication
    @RequiresPermissions(value={"baseResource_resourceTree","administrator"},logical= Logical.OR)
    public Message<List<BaseResourceTreeVM>> resourceTrre() {
        return Message.ok(resourceService.resourceTree());
    }

}
