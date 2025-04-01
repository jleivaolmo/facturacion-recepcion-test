package com.echevarne.sap.cloud.facturacion.recepcion.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.BAD_REQUEST) 
public class WrongStreamException extends RuntimeException {

	public WrongStreamException(String string) {
		super(string);
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
