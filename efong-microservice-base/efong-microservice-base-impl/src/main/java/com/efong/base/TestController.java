package com.efong.base;

import com.efong.base.vm.Testt;
import com.efong.framework.exception.DataValidateFiledException;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @GetMapping("/hello")
    public String hello(){
        Testt t= new Testt();
        return "he";
    }


    @GetMapping("/hee")
    @ResponseBody
    @RequiresAuthentication
    public String heo(){
        Testt t= new Testt();
        return "he";
    }

    @GetMapping("/testex")
    @ResponseBody
    public String testEx(){
        throw new DataValidateFiledException("校验异常");
    }

    @GetMapping("/error")
    @ResponseBody
    public String error(){
        return "error";
    }
}
