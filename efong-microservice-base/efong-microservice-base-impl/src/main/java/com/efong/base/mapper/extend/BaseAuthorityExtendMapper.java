package com.efong.base.mapper.extend;
import com.efong.base.domain.basic.BaseAuthority;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;


@Mapper
public interface BaseAuthorityExtendMapper {

    List<BaseAuthority> getAuthorityByUser(@Param("userId") String userId);
}
