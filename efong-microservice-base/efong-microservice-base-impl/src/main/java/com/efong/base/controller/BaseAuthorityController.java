package com.efong.base.controller;
import com.efong.base.api.v1.BaseAuthorityRestService;
import com.efong.base.service.impl.BaseAuthorityServiceImpl;
import com.efong.base.vm.BaseAuthorityVM;
import com.efong.framework.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;


public class BaseAuthorityController implements BaseAuthorityRestService {

    @Autowired
    private BaseAuthorityServiceImpl authorityService;

    //无权限
    @Override
    public Message<List<BaseAuthorityVM>> getAuthorityByUser(String userId) {
        return Message.ok(authorityService.getAuthorityByUser(userId));
    }
}
