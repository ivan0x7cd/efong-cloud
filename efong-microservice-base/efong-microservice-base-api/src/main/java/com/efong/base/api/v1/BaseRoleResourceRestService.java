package com.efong.base.api.v1;
import com.efong.base.vm.BaseRoleResourceSaveVM;
import com.efong.base.MicroserviceBaseConstants;
import com.efong.framework.utils.Message;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(name = MicroserviceBaseConstants.SERVICE_APP_ID)
@RequestMapping("/baseRoleResource")
public interface BaseRoleResourceRestService {

    @PostMapping("/authorize")
    Message<String> authorize(BaseRoleResourceSaveVM roleResourceSaveVM);
}
