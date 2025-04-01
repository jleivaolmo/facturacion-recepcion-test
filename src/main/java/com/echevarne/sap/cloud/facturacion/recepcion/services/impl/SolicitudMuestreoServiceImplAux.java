package com.echevarne.sap.cloud.facturacion.recepcion.services.impl;

import static com.echevarne.sap.cloud.facturacion.util.Destinations.Enum.TRANSFORMACION;

import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cloud.sleuth.Span;
import org.springframework.cloud.sleuth.Tracer;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.echevarne.sap.cloud.facturacion.constants.ConstLogMessages;
import com.echevarne.sap.cloud.facturacion.exception.AbstractExceptionHandler;

import com.echevarne.sap.cloud.facturacion.model.BasicMessagesEntity;
import com.echevarne.sap.cloud.facturacion.model.solicitudrecibida.PeticionMuestreo;
import com.echevarne.sap.cloud.facturacion.model.solicitudrecibida.SolicitudMuestreo;
import com.echevarne.sap.cloud.facturacion.services.LogService;
import com.echevarne.sap.cloud.facturacion.services.PeticionMuestreoService;

import com.echevarne.sap.cloud.facturacion.util.Destinations;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.var;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SolicitudMuestreoServiceImplAux extends AbstractExceptionHandler {

    private static final String TRANSFORMACION_URI = "/peticiones/Transformar/";
    
    @NonNull
    private final Destinations destinations;
    @NonNull    
    private final LogService logSrv;
    
    @Autowired
	@Qualifier("b2cAsync")
    private Executor b2CAsyncExecutor;

    @Autowired
    PeticionMuestreoService petMuesSrv;

    @Autowired
    private Tracer tracer;  // Inject the Tracer bean    

    @Async("b2bAsync")
    public void createSolicitudIndividualForB2B(String codigoPeticion) {
        log.info("Comienzo de creacion asincrona de Solicitud Individual para " + codigoPeticion);
       
        log.info("Fin de creacion asincrona de Solicitud Individual para " + codigoPeticion);
    }

    @Async("b2cAsync")
    public void createSolicitudIndividualForB2C(SolicitudMuestreo solicitudMuestreo) {
        if (b2CAsyncExecutor instanceof ThreadPoolTaskExecutor) {
            ThreadPoolTaskExecutor threadPoolExecutor = (ThreadPoolTaskExecutor) b2CAsyncExecutor;

            int poolSize = threadPoolExecutor.getPoolSize();
            int activeCount = threadPoolExecutor.getActiveCount();

            // Add custom span tags
            Span currentSpan = tracer.currentSpan();
            currentSpan.tag("threadPoolSize", Integer.toString(poolSize));
            currentSpan.tag("activeThreads", Integer.toString(activeCount));
        }

        solicitudMuestreo.getPeticion().stream().sorted(Comparator.comparingInt(p -> ((PeticionMuestreo) p).getPruebas().size()).reversed()).forEach(peticion -> {
            log.info("Comienzo de creacion asincrona de Solicitud Individual para " + peticion.getCodigoPeticion());
            
            log.info("Fin de creacion asincrona de Solicitud Individual para " + peticion.getCodigoPeticion());
        });
    }

    

	

}
