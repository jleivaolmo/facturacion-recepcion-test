package com.echevarne.sap.cloud.facturacion.recepcion.config;

import java.util.concurrent.Executor;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

@SpringBootConfiguration
public class RecepcionConfig {

//    private static final int B2BCorePoolSize = 10;
    private static final int B2BMaxPoolSize = 20;
    private static final String B2BThreadPrefix = "B2B-";

//    private static final int B2CCorePoolSize = 10;
    private static final int B2CMaxPoolSize = 20;
    private static final String B2CThreadPrefix = "B2C-";

//    private static final int InterlocutoresCorePoolSize = 3;
//    private static final int InterlocutoresMaxPoolSize = 6;
//    private static final String InterlocutoresThreadPrefix = "ILOC-";

    @Bean(name = "b2bAsync")
    public Executor getB2BAsyncExecutor() {

        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(0);
        executor.setMaxPoolSize(B2BMaxPoolSize);
        executor.setQueueCapacity(5000);
        executor.setAllowCoreThreadTimeOut(true);
        executor.setThreadNamePrefix(B2BThreadPrefix);
        executor.initialize();
        return executor;

    }

    @Bean(name = "b2cAsync")
    public Executor getB2CAsyncExecutor() {

        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(0);
        executor.setMaxPoolSize(B2CMaxPoolSize);
        executor.setQueueCapacity(5000);
        executor.setAllowCoreThreadTimeOut(true);        
        executor.setThreadNamePrefix(B2CThreadPrefix);
        executor.initialize();
        return executor;
    }

//    @Bean(name = "interlocutoresAsync")
//    public Executor getInterlocutoresAsyncExecutor() {
//
//        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
//        executor.setCorePoolSize(InterlocutoresCorePoolSize);
//        executor.setMaxPoolSize(InterlocutoresMaxPoolSize);
//        executor.setQueueCapacity(100);
//        executor.setThreadNamePrefix(InterlocutoresThreadPrefix);
//        executor.initialize();
//        return executor;
//
//    }
}
