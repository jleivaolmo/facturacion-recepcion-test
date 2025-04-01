package com.echevarne.sap.cloud.facturacion.recepcion;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;

import com.echevarne.sap.cloud.facturacion.CoreApplication;


@SpringBootApplication
@PropertySource(value = { "application.properties","extra-application.properties" })
@Import(CoreApplication.class)
public class RecepcionBootApplication  {
    public static void main(String[] args) {
        SpringApplication.run(RecepcionBootApplication.class, args);
    }
}
