DELETE FROM VT_EMPRESAS;
SET @date = now();

INSERT INTO VT_EMPRESAS(CODIGOEMPRESA,NOMBREEMPRESA) VALUES (1,'empresa');