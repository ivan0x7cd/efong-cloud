package com.efong.framework.annotation;
import com.efong.framework.config.FocusImportSelector;
import com.efong.framework.config.FocusFactoryBean;
import com.efong.framework.redisson.RedissonAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.Import;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import java.lang.annotation.*;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Import({ FocusImportSelector.class, FocusFactoryBean.class,RedissonAutoConfiguration.class})
//指定扫描feign包，过滤条件以注解形式，过滤掉controller，只保存componenet
@ComponentScans({@ComponentScan(value = "com.efong.framework.feign",
        excludeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION,value = {Controller.class})},
        includeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION,value = {Component.class})})})
public @interface EnableFocusCloud {

}
