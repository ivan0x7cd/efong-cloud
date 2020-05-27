package com.efong.base.api.v1;

import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.vm.*;
import com.efong.framework.utils.Message;
import com.github.pagehelper.PageInfo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;


@FeignClient(name = MicroserviceBaseConstants.SERVICE_APP_ID)
@RequestMapping("/baseRole")
public interface BaseRoleRestService {

    //角色列表
    @GetMapping("/roleList")
    Message<PageInfo<BaseRoleListVM>> roleList(BaseRoleSearchVM search);

    //新增角色
    @PostMapping("/role")
    Message<String> saveRole(BaseRoleCreateVM role);

    //修改角色
    @PutMapping("/role")
    Message<String> updateRole(BaseRoleUpdateVM roleUpdateVM);

    //删除角色
    @DeleteMapping("/role/{roleIds}")
    Message<String> deleteRole(@PathVariable("roleIds")String roleIds);

    @GetMapping("/detail")
    Message<BaseRoleVM> detail(String roleId);
}
