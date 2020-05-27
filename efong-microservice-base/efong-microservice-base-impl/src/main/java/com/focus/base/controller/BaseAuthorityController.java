package com.focus.base.controller;

import com.efong.base.api.v1.BaseAuthorityRestService;
import com.focus.base.service.impl.BaseAuthorityServiceImpl;
import com.efong.base.vm.BaseAuthorityVM;
import com.efong.framework.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @Description
 * @Author Melo
 * @Date 2019/6/7 0007 下午 2:50
 */
public class BaseAuthorityController implements BaseAuthorityRestService {

    @Autowired
    private BaseAuthorityServiceImpl authorityService;

    //无权限
    @Override
    public Message<List<BaseAuthorityVM>> getAuthorityByUser(String userId) {
        return Message.ok(authorityService.getAuthorityByUser(userId));
    }
}
