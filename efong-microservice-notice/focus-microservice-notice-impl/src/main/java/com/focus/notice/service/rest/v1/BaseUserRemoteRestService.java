package com.efong.notice.service.rest.v1;

import com.efong.base.FocusMicroBaseConstants;
import com.efong.base.api.v1.BaseUserRestService;
import org.springframework.cloud.openfeign.FeignClient;

//@FeignClient(name = FocusMicroBaseConstants.SERVICE_APP_ID,fallback = BaseUserRemoteRestServiceHystrix.class)
public interface BaseUserRemoteRestService extends BaseUserRestService {
}
