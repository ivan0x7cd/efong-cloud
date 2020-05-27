package com.efong.base.api.v1;
import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.vm.LoginUserVM;
import com.efong.framework.utils.Message;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;


@FeignClient(name = MicroserviceBaseConstants.SERVICE_APP_ID)
public interface BaseLoginRestService {

    //返回登录页面
    @GetMapping("/loginpage")
    public String loginPage();

    //登录接口
    @PostMapping("/login")
    public Message<String> login(LoginUserVM loginUser);

    //退出登录
    @PostMapping("/loginout")
    public Message<String> loginOut();
}
