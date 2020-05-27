package com.efong.base.api.v1;
import com.efong.base.MicroserviceBaseConstants;
import com.efong.base.vm.BaseAuthorityVM;
import com.efong.framework.utils.Message;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;


@FeignClient(name = MicroserviceBaseConstants.SERVICE_APP_ID)
public interface BaseAuthorityRestService {

    //这个没有权限
    @GetMapping("/getAuthorityByUser")
    public Message<List<BaseAuthorityVM>> getAuthorityByUser(String userId);

}
