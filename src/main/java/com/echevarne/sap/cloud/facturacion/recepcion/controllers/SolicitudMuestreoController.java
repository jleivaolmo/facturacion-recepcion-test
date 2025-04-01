package com.echevarne.sap.cloud.facturacion.recepcion.controllers;

import static com.echevarne.sap.cloud.facturacion.exception.EntityType.SOLICITUDMUESTREO;
import static com.echevarne.sap.cloud.facturacion.exception.ExceptionType.BUSINESS_EXCEPTION;
import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.echevarne.sap.cloud.facturacion.constants.ConstLogMessages;
import com.echevarne.sap.cloud.facturacion.dto.response.Response;
import com.echevarne.sap.cloud.facturacion.exception.AbstractExceptionHandler;
import com.echevarne.sap.cloud.facturacion.model.solicitudrecibida.PeticionMuestreo;
import com.echevarne.sap.cloud.facturacion.model.solicitudrecibida.SolicitudMuestreo;
import com.echevarne.sap.cloud.facturacion.recepcion.RecepcionConstants;

import com.echevarne.sap.cloud.facturacion.recepcion.services.impl.SolicitudMuestreoServiceImplAux;

import com.echevarne.sap.cloud.facturacion.services.LogService;
import com.echevarne.sap.cloud.facturacion.services.MessagesService;
import com.echevarne.sap.cloud.facturacion.services.PeticionMuestreoService;
import com.echevarne.sap.cloud.facturacion.services.SolicitudMuestreoService;
import com.echevarne.sap.cloud.facturacion.util.DateUtils;
import lombok.var;
import lombok.extern.slf4j.Slf4j;

/**
 * Main API REST end-points of services
 */
@RestController
@Slf4j
@RequestMapping(path = RecepcionConstants.BASE_PATH + "/solicitudes/", produces = MediaType.APPLICATION_JSON_VALUE)
public class SolicitudMuestreoController extends AbstractExceptionHandler {

	@Autowired
	private MessagesService msgSrv;
	@Autowired
	private SolicitudMuestreoService solicitudMuestreoSrv;
	@Autowired
	private PeticionMuestreoService peticionMuestreoSrv;
	@Autowired
	private SolicitudMuestreoServiceImplAux solicitudMuestreoServiceImplAux;

	@Autowired
	private LogService logSrv;

	@PostMapping("/")
	public ResponseEntity<Response<?>> create(@RequestBody SolicitudMuestreo solicitudMuestreo) {
		try {
			if (solicitudMuestreo.getPeticion().isEmpty()) {
				log.error("err peticion empty");
				throw exceptionWithKey(SOLICITUDMUESTREO, BUSINESS_EXCEPTION, "empty");
			}
			if (solicitudMuestreo.getPeticion().stream().allMatch(PeticionMuestreo::isEsPrivado)) {
				log.error("peticion no recepcionable = " + solicitudMuestreo.getCodigoPeticion());
				Response<String> response = new Response<String>(msgSrv).businessException()
						.setResponseBody("la petición no puede ser recepcionada por el endpoint");
				return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
			}
			SolicitudMuestreo sm = solicitudMuestreoSrv.create(solicitudMuestreo);
			
			transformarPeticiones(sm);
			return buildResponse(sm, "0002", sm.getCodigoPeticionLims());
		} catch (Exception we) {
			if (solicitudMuestreo != null) {
				log.error("err peticion = " + solicitudMuestreo.getCodigoPeticion() + ": " + we, we);
				logSrv.log("ERROR", ConstLogMessages.MODULE_RECEPCION, "SolicitudMuestreoController", we.getMessage(), we,
						solicitudMuestreo.getCodigoPeticion());
			}
			Response<SolicitudMuestreo> response = new Response<SolicitudMuestreo>().badRequest();
			response.addErrorMsgToResponse(we);
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}
	}

	

	@PostMapping("/privados/")
	public ResponseEntity<Response<?>> privados(@RequestBody SolicitudMuestreo solicitudMuestreo) {
		try {
			if (solicitudMuestreo.isEmpty()) {
				throw exceptionWithKey(SOLICITUDMUESTREO, BUSINESS_EXCEPTION, "empty");
			}
			if (!solicitudMuestreo.validarEsPrivado()) {
				Response<String> response = new Response<String>(msgSrv).businessException()
						.setResponseBody("la petición no puede ser recepcionada por el endpoint");
				return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
			}
			SolicitudMuestreo sm = solicitudMuestreoSrv.create(solicitudMuestreo);
			
			transformarPeticiones(sm);
			return buildResponse(sm, "0002", sm.getCodigoPeticion());
		} catch (Exception we) {
			Response<SolicitudMuestreo> response = new Response<SolicitudMuestreo>().badRequest();
			response.addErrorMsgToResponse(we);
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}
	}

	private void transformarPeticiones(SolicitudMuestreo sm) {
		solicitudMuestreoServiceImplAux.createSolicitudIndividualForB2C(sm);
	}

	@Profile("test")
	@GetMapping("/{codigoSolicitud}")
	@ResponseBody
	public ResponseEntity<SolicitudMuestreo> getSolicitud(@PathVariable("codigoSolicitud") String codigoSolicitud) {
		SolicitudMuestreo result = solicitudMuestreoSrv.findSolicitudByCodigoPeticion(codigoSolicitud);
		if (result == null) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	
	
	

}
