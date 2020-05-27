package com.efong.base.api.v1.hystrix;
import com.efong.base.api.v1.BaseUserRestService;
import com.efong.base.vm.*;
import com.efong.framework.utils.Message;
import com.github.pagehelper.PageInfo;

//@Component
public class BaseUserRestServiceHystrix implements BaseUserRestService {
    @Override
    public String getUser() {
        return "hystrix";
    }

    @Override
    public Message<String> createUser(BaseUserCreateVM userCreateVM) {
        return null;
    }

    @Override
    public Message<String> updateUser(BaseUserUpdateVM userCreateVM) {
        return null;
    }

    @Override
    public Message<String> deleteUser(String userIds) {
        return null;
    }

    @Override
    public Message<PageInfo<BaseUserListVM>> userList(BaseUserSearchVM serarch) {
        return null;
    }

    @Override
    public Message<BaseUserVM> detail(String userId) {
        return null;
    }

}
