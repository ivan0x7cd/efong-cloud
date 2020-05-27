package com.efong.base.service;

import com.efong.base.vm.BaseAuthorityVM;

import java.util.List;

public interface BaseAuthorityService {

    List<BaseAuthorityVM> getAuthorityByUser(String userId);
}
