package com.efong.base.service.impl;

import com.efong.base.domain.basic.BaseAuthority;
import com.efong.base.mapper.extend.BaseAuthorityExtendMapper;
import com.efong.base.service.BaseAuthorityService;
import com.efong.base.vm.BaseAuthorityVM;
import com.efong.framework.utils.Asserts;
import com.efong.framework.utils.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class BaseAuthorityServiceImpl implements BaseAuthorityService {

    @Autowired
    private BaseAuthorityExtendMapper baseAuthorityExtendMapper;

    @Override
    public List<BaseAuthorityVM> getAuthorityByUser(String userId) {
        Asserts.notEmpty(userId,"用户Id不能为空");
        List<BaseAuthority> authorityList = baseAuthorityExtendMapper.getAuthorityByUser(userId);
        List<BaseAuthorityVM> baseAuthorityVMS = EntityUtils.entity2VMList(authorityList, BaseAuthorityVM.class, "");
        return baseAuthorityVMS;
    }
}
