package com.efong.base.service.impl;

import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.vm.*;
import com.efong.base.domain.basic.BaseUser;
import com.efong.base.domain.extend.ListBaseUser;
import com.efong.base.mapper.basic.BaseUserMapper;
import com.efong.base.mapper.extend.BaseUserExtendMapper;
import com.efong.base.service.BaseUserRoleService;
import com.efong.base.service.BaseUserService;
import com.efong.base.util.ShiroUtils;
import com.efong.framework.exception.DataValidateFiledException;
import com.efong.framework.utils.Asserts;
import com.efong.framework.utils.EntityUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @Description
 * @Author Melo
 * @Date 2019/6/7 0007 下午 6:27
 */
@Service
@Transactional
public class BaseUserServiceImpl implements BaseUserService {

    @Autowired
    BaseUserExtendMapper baseUserExtendMapper;

    @Autowired
    BaseUserMapper baseUserMapper;

    @Autowired
    BaseUserRoleService baseUserRoleService;

    @Override
    public BaseUser selectByLoginName(String loginName) {
        Asserts.notEmpty(loginName,"用户名不能为空");
        return baseUserExtendMapper.selectByLoginName(loginName);
    }

    @Override
    public PageInfo<BaseUserListVM> userList(BaseUserSearchVM serarch) {
        PageHelper.startPage(serarch.getPage(),serarch.getLimit());
        List<ListBaseUser> list = baseUserExtendMapper.userList(serarch);
        return  new PageInfo<BaseUserListVM>(EntityUtils.entity2VMList(list,BaseUserListVM.class));
    }

    @Override
    public void deletUser(String userIds) {
        Asserts.notEmpty(userIds,"删除用户不存在");
        List<String> list = Arrays.asList(userIds.split(","));
        baseUserExtendMapper.batchDelete(list);
    }

    @Override
    public void createUser(BaseUserCreateVM userCreateVM) {
        Asserts.validate(userCreateVM,"userCreateVM");
        Date now = new Date();
        String userId = ShiroUtils.currentUser().getId();

        BaseUser baseUser = EntityUtils.vm2Entity(userCreateVM, BaseUser.class);
        baseUser.setId(UUID.randomUUID().toString());
        baseUser.setCreatDate(now);
        baseUser.setCreatUser(userId);
        baseUser.setUpdateDate(now);
        baseUser.setUpdateUser(userId);
        baseUser.setStatus(MicroserviceBaseConstants.UserStatus.NORMAL.getValue());
        baseUser.setUserType(MicroserviceBaseConstants.UserType.CUSTOMIZE.getValue());
        baseUser.setSuperman(false);

        String password = new SimpleHash("md5",baseUser.getPassword(), baseUser.getId(), 2).toString();
        baseUser.setPassword(password);
        baseUserMapper.insert(baseUser);

        List userIds = new ArrayList(){{add(baseUser.getId());}};
        List roleIds = new ArrayList(){{add("sdfefwertfe3br1234124412312");}};//普通用户角色
        baseUserRoleService.authorize(new BaseUserRoleSaveVM(userIds,roleIds));
    }

    @Override
    public void updateUser(BaseUserUpdateVM userUpdateVM) {
        Asserts.validate(userUpdateVM,"userUpdateVM");
        BaseUser user = baseUserMapper.selectByPrimaryKey(userUpdateVM.getId());
        if(user==null){
            throw new DataValidateFiledException("用户不存在");
        }
        if(user.getUserType()== MicroserviceBaseConstants.UserType.SYSTEM.getValue()){
            throw new DataValidateFiledException("系统用户不能修改");
        }

        BaseUser baseUser = EntityUtils.vm2Entity(userUpdateVM, BaseUser.class);
        baseUser.setPassword(
                new SimpleHash("md5",baseUser.getPassword(), baseUser.getId(), 2).toString()
        );
        baseUserExtendMapper.updateUser(baseUser);
    }

    @Override
    public BaseUserVM detail(String userId) {
        return EntityUtils.entity2VM(baseUserMapper.selectByPrimaryKey(userId),BaseUserVM.class);
    }
}
