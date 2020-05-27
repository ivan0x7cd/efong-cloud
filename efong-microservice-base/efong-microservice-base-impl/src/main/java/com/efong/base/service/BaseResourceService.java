package com.efong.base.service;

import com.efong.base.vm.BaseResourceTreeVM;
import com.efong.base.vm.BaseResourceVM;

import java.util.List;

public interface BaseResourceService {
    List<BaseResourceVM> indexResource();

    List<BaseResourceVM> resourcesInModule(String moduleCode);

    List<BaseResourceTreeVM> resourceTree();
}
