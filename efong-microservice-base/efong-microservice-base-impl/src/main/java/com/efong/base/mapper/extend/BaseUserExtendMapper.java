package com.efong.base.mapper.extend;

import com.efong.base.domain.basic.BaseUser;
import com.efong.base.domain.extend.ListBaseUser;
import com.efong.base.vm.BaseUserSearchVM;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description
 * @Author Melo
 * @Date 2019/6/7 0007 下午 6:39
 */
@Mapper
public interface BaseUserExtendMapper {
    public BaseUser selectByLoginName(@Param("loginName") String loginName);

    List<ListBaseUser> userList(@Param("serarch") BaseUserSearchVM serarch);

    void batchDelete(@Param("list") List<String> list);

    void updateUser(@Param("baseUser") BaseUser baseUser);
}
