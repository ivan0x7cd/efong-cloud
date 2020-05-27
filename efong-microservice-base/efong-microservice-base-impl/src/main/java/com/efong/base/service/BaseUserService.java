package com.efong.base.service;

import com.efong.base.vm.*;
import com.efong.base.domain.basic.BaseUser;
import com.github.pagehelper.PageInfo;

public interface BaseUserService {

    BaseUser selectByLoginName(String loginName);

    PageInfo<BaseUserListVM> userList(BaseUserSearchVM serarch);

    void deletUser(String userIds);

    void createUser(BaseUserCreateVM userCreateVM);

    void updateUser(BaseUserUpdateVM userUpdateVM);

    BaseUserVM detail(String userId);
}
