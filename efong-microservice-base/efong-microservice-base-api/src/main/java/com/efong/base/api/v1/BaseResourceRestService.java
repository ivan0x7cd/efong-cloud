package com.efong.base.api.v1;
import com.efong.base.vm.BaseResourceTreeVM;
import com.efong.base.vm.BaseResourceVM;
import com.efong.base.MicroserviceBaseConstants;
import com.efong.framework.utils.Message;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;


@FeignClient(name = MicroserviceBaseConstants.SERVICE_APP_ID)
@RequestMapping("/baseResource")
public interface BaseResourceRestService {

    @GetMapping("/indexResource")
    Message<List<BaseResourceVM>> indexResource();

    @GetMapping("/resourcesInModule")
    Message<List<BaseResourceVM>> resourcesInModule(String moduleCode);

    //查询资源树
    @GetMapping("/resourceTree")
    Message<List<BaseResourceTreeVM>> resourceTrre();

}
