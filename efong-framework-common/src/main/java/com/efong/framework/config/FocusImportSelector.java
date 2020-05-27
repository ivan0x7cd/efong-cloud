package com.efong.framework.config;

import org.springframework.context.annotation.ImportSelector;
import org.springframework.core.type.AnnotationMetadata;

public class FocusImportSelector implements ImportSelector {
    @Override
    public String[] selectImports(AnnotationMetadata annotationMetadata) {
        String [] imports = new String[2];
        imports[0]="com.efong.framework.utils.SpringUtil";
//        imports[1]="com.efong.framework.exception.GlobalExceptionHandler";
        return imports;
    }
}
