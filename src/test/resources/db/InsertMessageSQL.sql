INSERT INTO T_Messages VALUES (1,'Mensaje con Clave {0} no configurado.',NOW(),1,'0000',0,'es',NOW(),'messages.not.found',NULL,NULL,1);
INSERT INTO T_Messages VALUES (2,'Ha ocurrido un error al procesar la petición.',NOW(),1,'0001',0,'es',NOW(),'solicitudmuestreo.business.exception.empty',NULL,NULL,1);
INSERT INTO T_Messages VALUES (3,'La Petición Nro {0} se ha recibido con éxito.',NOW(),1,'0002',0,'es',NOW(),'solicitudmuestreo.create.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (4,' Se comienza la recepción de la petición {0}.',NOW(),1,'0003',0,'es',NOW(),'solicitudmuestreo.create.init',NULL,NULL,1);
INSERT INTO T_Messages VALUES (5,'Se han gestionado con éxito los cambios en la petición {0}.',NOW(),1,'0004',0,'es',NOW(),'solicitudmuestreo.update.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (6,'Se comienza el proceso de transformación de {0}.',NOW(),1,'0005',0,'es',NOW(),'solicitudmuestreo.transform.init',NULL,NULL,1);
INSERT INTO T_Messages VALUES (7,'Se ha creado con éxito la solicitud individual de la petición {0}.',NOW(),1,'0006',0,'es',NOW(),'solicitudmuestreo.transform.solind.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (8,'Se ha procesado con éxito la simulación de la petición {0}.',NOW(),1,'0007',0,'es',NOW(),'solicitudmuestreo.transform.simul.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (9,'Se ha procesado con éxito la clasificación de la petición {0}.',NOW(),1,'0008',0,'es',NOW(),'solicitudmuestreo.transform.clasif.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (10,'Ha finalizado con éxito la transformación de la petición {0}.',NOW(),1,'0009',0,'es',NOW(),'solicitudmuestreo.transform.end.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (11,'La acción no esta permitida para el estado {0}.',NOW(),1,'0010',0,'es',NOW(),'accion.no.permitida',NULL,NULL,1);
INSERT INTO T_Messages VALUES (12,'Se ha excedido la cantidad de peticiones que se pueden procesar masivamente. Has seleccionado {0} peticiones y el máximo es 10.',NOW(),1,'0011',0,'es',NOW(),'maximo.superado',NULL,NULL,1);
INSERT INTO T_Messages VALUES (13,'No se han encontrado peticiones que apliquen al proceso ejecutado.',NOW(),1,'0012',0,'es',NOW(),'peticiones.no.aplican',NULL,NULL,1);
INSERT INTO T_Messages VALUES (14,'No se cumplen las condiciones para establecer el estado {0} a la petición {1}.',NOW(),1,'0013',0,'es',NOW(),'estados.condiciones',NULL,NULL,1);
INSERT INTO T_Messages VALUES (15,'Se ha establecido el estado {0} a la petición {1}.',NOW(),1,'0014',0,'es',NOW(),'estado.establecido.peticion',NULL,NULL,1);
INSERT INTO T_Messages VALUES (16,'Se ha establecido el estado {0} a la prueba {1}.',NOW(),1,'0015',0,'es',NOW(),'estado.establecido.prueba',NULL,NULL,1);
INSERT INTO T_Messages VALUES (17,'Se han procesado masivamente las peticiones.',NOW(),1,'0016',0,'es',NOW(),'masivo.success',NULL,NULL,1);
INSERT INTO T_Messages VALUES (18,'Error al llamar a un microservicio.',NOW(),1,'0090',0,'es',NOW(),'solicitudmuestreo.business.exception.rest.call.error',NULL,NULL,1);
INSERT INTO T_Messages VALUES (19,'Error al llamar al sdk.',NOW(),1,'0091',0,'es',NOW(),'petmuesinterlocutores.business.exception.sdk.call.error',NULL,NULL,1);
INSERT INTO T_Messages VALUES (20,'Error al llamar al sdk.',NOW(),1,'0092',0,'es',NOW(),'simulacion.business.exception.sdk.call.error',NULL,NULL,1);
INSERT INTO T_Messages VALUES (21,'Error al invocar la llamada al SDK.',NOW(),1,'0093',0,'es',NOW(),'simulacion.sdk.call.error',NULL,NULL,1);
INSERT INTO T_Messages VALUES (22,'Mensaje con Clave {0} no configurado.',NOW(),1,'0099',0,'es',NOW(),'default',NULL,NULL,1);
INSERT INTO T_Messages VALUES (23,'Se comienza la recepción de la petición {0}.',NOW(),1,'0100',0,'es',NOW(),'recepcion.100',NULL,NULL,2);
INSERT INTO T_Messages VALUES (24,'Se ha procesado la recepción de la petición {0}.',NOW(),1,'0101',0,'es',NOW(),'recepcion.101',NULL,NULL,2);
INSERT INTO T_Messages VALUES (25,'Se procesan las modificaciones de la petición {0}.',NOW(),1,'0102',0,'es',NOW(),'recepcion.102',NULL,NULL,2);
INSERT INTO T_Messages VALUES (26,'Se ha validado la prueba {0} de la petición {1}.',NOW(),1,'0103',0,'es',NOW(),'recepcion.103',NULL,NULL,2);
INSERT INTO T_Messages VALUES (27,'Se ha establecido la alerta {0} en la petición {1}.',NOW(),1,'0104',0,'es',NOW(),'recepcion.104',NULL,NULL,2);
INSERT INTO T_Messages VALUES (28,'Se ha quitado la alerta {0} en la petición {1}.',NOW(),1,'0105',0,'es',NOW(),'recepcion.105',NULL,NULL,2);
INSERT INTO T_Messages VALUES (29,'Se ha establecido el estado {0} a la petición {1}.',NOW(),1,'0106',0,'es',NOW(),'recepcion.106',NULL,NULL,2);
INSERT INTO T_Messages VALUES (30,'Se ha establecido el estado {0} a la prueba {1}.',NOW(),1,'0107',0,'es',NOW(),'recepcion.107',NULL,NULL,2);
INSERT INTO T_Messages VALUES (31,'Recepción {0}: {1}',NOW(),1,'0199',0,'es',NOW(),'recepcion.199',NULL,NULL,2);
INSERT INTO T_Messages VALUES (32,'Error al procesar el tratamiento de interlocutores comerciales.',NOW(),1,'0200',0,'es',NOW(),'interlocutores.200',NULL,NULL,3);
INSERT INTO T_Messages VALUES (33,'Se ha creado el interlocutor {0} con código {1}.',NOW(),1,'0201',0,'es',NOW(),'interlocutores.201',NULL,NULL,3);
INSERT INTO T_Messages VALUES (34,'No se ha podido crear el interlocutor {0} con código {1}.',NOW(),1,'0202',0,'es',NOW(),'interlocutores.202',NULL,NULL,3);
INSERT INTO T_Messages VALUES (35,'Los datos del interlocutor {0} han sido modificados.',NOW(),1,'0203',0,'es',NOW(),'interlocutores.203',NULL,NULL,3);
INSERT INTO T_Messages VALUES (36,'Los datos del interlocutor {0} no han podido ser modificados.',NOW(),1,'0204',0,'es',NOW(),'interlocutores.204',NULL,NULL,3);
INSERT INTO T_Messages VALUES (37,'Se ha modificado la dirección de correo electrónico del interlocutor {0}.',NOW(),1,'0205',0,'es',NOW(),'interlocutores.205',NULL,NULL,3);
INSERT INTO T_Messages VALUES (38,'Se ha modificado el teléfono principal del interlocutor {0}.',NOW(),1,'0206',0,'es',NOW(),'interlocutores.206',NULL,NULL,3);
INSERT INTO T_Messages VALUES (39,'Se ha modificado el teléfono secundario del interlocutor {0}.',NOW(),1,'0207',0,'es',NOW(),'interlocutores.207',NULL,NULL,3);
INSERT INTO T_Messages VALUES (40,'Se han modificado los datos de identificación del interlocutor {0}.',NOW(),1,'0208',0,'es',NOW(),'interlocutores.208',NULL,NULL,3);
INSERT INTO T_Messages VALUES (41,'Se ha modificado el identificador fiscal del interlocutor {0}.',NOW(),1,'0209',0,'es',NOW(),'interlocutores.209',NULL,NULL,3);
INSERT INTO T_Messages VALUES (42,'Se han modificado los datos de dirección del interlocutor {0}.',NOW(),1,'0210',0,'es',NOW(),'interlocutores.210',NULL,NULL,3);
INSERT INTO T_Messages VALUES (43,'No se han podido modificar los datos de dirección del interlocutor {0}: {1}',NOW(),1,'0211',0,'es',NOW(),'interlocutores.211',NULL,NULL,3);
INSERT INTO T_Messages VALUES (44,'No se ha podido modificar la dirección de correo electrónico del interlocutor {0}: {1}',NOW(),1,'0212',0,'es',NOW(),'interlocutores.212',NULL,NULL,3);
INSERT INTO T_Messages VALUES (45,'No se ha podido modificar  el teléfono principal del interlocutor {0}: {1}',NOW(),1,'0213',0,'es',NOW(),'interlocutores.213',NULL,NULL,3);
INSERT INTO T_Messages VALUES (46,'No se ha podido modificar el teléfono secundario del interlocutor {0}: {1}',NOW(),1,'0214',0,'es',NOW(),'interlocutores.214',NULL,NULL,3);
INSERT INTO T_Messages VALUES (47,'No se han podido modificar los datos de identificación del interlocutor {0}: {1}',NOW(),1,'0215',0,'es',NOW(),'interlocutores.215',NULL,NULL,3);
INSERT INTO T_Messages VALUES (48,'No se ha podido modificar el identificador fiscal del interlocutor {0}: {1}',NOW(),1,'0216',0,'es',NOW(),'interlocutores.216',NULL,NULL,3);
INSERT INTO T_Messages VALUES (49,'Error al crear interlocutor: {0}',NOW(),1,'0290',0,'es',NOW(),'interlocutores.290',NULL,NULL,3);
INSERT INTO T_Messages VALUES (50,'Se han procesado correctamente los interlocutores comerciales.',NOW(),1,'0291',0,'es',NOW(),'interlocutores.291',NULL,NULL,3);
INSERT INTO T_Messages VALUES (51,'Interlocutor {0}: {1}.',NOW(),1,'0299',0,'es',NOW(),'interlocutores.299',NULL,NULL,3);
INSERT INTO T_Messages VALUES (52,'Se comienza el proceso de simulación.',NOW(),1,'0300',0,'es',NOW(),'simulacion.300',NULL,NULL,4);
INSERT INTO T_Messages VALUES (53,'Se ha simulado correctamente la solicitud.',NOW(),1,'0301',0,'es',NOW(),'simulacion.301',NULL,NULL,4);
INSERT INTO T_Messages VALUES (54,'Error en la simulación de precios: {0}.',NOW(),1,'0302',0,'es',NOW(),'simulacion.302',NULL,NULL,4);
INSERT INTO T_Messages VALUES (55,'Simulación {0}: {1}.',NOW(),1,'0399',0,'es',NOW(),'simulacion.399',NULL,NULL,4);
INSERT INTO T_Messages VALUES (56,'Se comienza con el proceso de transformación de la petición.',NOW(),1,'0400',0,'es',NOW(),'transformacion.400',NULL,NULL,5);
INSERT INTO T_Messages VALUES (57,'Se ha realizado una actualización de la petición',NOW(),1,'0401',0,'es',NOW(),'transformacion.401',NULL,NULL,5);
INSERT INTO T_Messages VALUES (58,'Se ha establecido la regla de facturación general a la prueba {0}.',NOW(),1,'0402',0,'es',NOW(),'transformacion.402',NULL,NULL,5);
INSERT INTO T_Messages VALUES (59,'Se ha establecido la regla de facturación {0} a la prueba {1}.',NOW(),1,'0403',0,'es',NOW(),'transformacion.403',NULL,NULL,5);
INSERT INTO T_Messages VALUES (60,'Se ha relacionado el bloqueo de cortesía a la petición.',NOW(),1,'0404',0,'es',NOW(),'transformacion.404',NULL,NULL,5);
INSERT INTO T_Messages VALUES (61,'Se ha relacionado el contrato {0} del tipo {1}.',NOW(),1,'0405',0,'es',NOW(),'transformacion.405',NULL,NULL,5);
INSERT INTO T_Messages VALUES (62,'Se ha añadido el vendedor {0}.',NOW(),1,'0406',0,'es',NOW(),'transformacion.406',NULL,NULL,5);
INSERT INTO T_Messages VALUES (63,'Se ha añadido el comisionista {0}.',NOW(),1,'0407',0,'es',NOW(),'transformacion.407',NULL,NULL,5);
INSERT INTO T_Messages VALUES (64,'Ha ocurrido un error: {0}.',NOW(),1,'0408',0,'es',NOW(),'transformacion.408',NULL,NULL,5);
INSERT INTO T_Messages VALUES (65,'Transformación {0}: {1}.',NOW(),1,'0499',0,'es',NOW(),'transformacion.499',NULL,NULL,5);
INSERT INTO T_Messages VALUES (66,'Se comienza con el proceso de clasificación de pruebas.',NOW(),1,'0500',0,'es',NOW(),'clasificacion.500',NULL,NULL,6);
INSERT INTO T_Messages VALUES (67,'No se ha podido clasificar la prueba {0}.',NOW(),1,'0501',0,'es',NOW(),'clasificacion.501',NULL,NULL,6);
INSERT INTO T_Messages VALUES (68,'No se ha podido clasificar la prueba {0}.',NOW(),1,'0502',0,'es',NOW(),'clasificacion.502',NULL,NULL,6);
INSERT INTO T_Messages VALUES (69,'Se ha clasificado la prueba {0} en la tipología {1}.',NOW(),1,'0503',0,'es',NOW(),'clasificacion.503',NULL,NULL,6);
INSERT INTO T_Messages VALUES (70,'En la petición {0} no se ha podido clasificar el ítem id {1}.',NOW(),1,'0510',0,'es',NOW(),'clasificacion.510',NULL,NULL,6);
INSERT INTO T_Messages VALUES (71,'En la petición {0} no se ha encontrado clasificador para el ítem id {1}.',NOW(),1,'0511',0,'es',NOW(),'clasificacion.511',NULL,NULL,6);
INSERT INTO T_Messages VALUES (72,'En la petición {0} se ha clasificado el item {1}.',NOW(),1,'0512',0,'es',NOW(),'solicitudmuestreo.transform.tipologiaclasif.success',NULL,NULL,6);
INSERT INTO T_Messages VALUES (73,'Clasificación {0}: {1}.',NOW(),1,'0599',0,'es',NOW(),'clasificacion.599',NULL,NULL,6);
INSERT INTO T_Messages VALUES (74,'Se comienza con el proceso de facturación para la tipología {0}.',NOW(),1,'0600',0,'es',NOW(),'agrupacion.600',NULL,NULL,7);
INSERT INTO T_Messages VALUES (75,'Se procesa la actividad productiva incluida en la tipología de acto médico.',NOW(),1,'0601',0,'es',NOW(),'agrupacion.601',NULL,NULL,7);
INSERT INTO T_Messages VALUES (76,'Se procesa la actividad productiva incluida en la tipología de actividad por contrato de fijo por petición.',NOW(),1,'0602',0,'es',NOW(),'agrupacion.602',NULL,NULL,7);
INSERT INTO T_Messages VALUES (77,'Se procesa la actividad productiva incluida en la tipología de actividad por contrato de capitativo fijo.',NOW(),1,'0603',0,'es',NOW(),'agrupacion.603',NULL,NULL,7);
INSERT INTO T_Messages VALUES (78,'Se procesa la actividad productiva incluida en la tipología de actividad por contrato de capitativo variable.',NOW(),1,'0604',0,'es',NOW(),'agrupacion.604',NULL,NULL,7);
INSERT INTO T_Messages VALUES (79,'Se han agrupado pruebas de la petición en la solicitud agrupada {0}.',NOW(),1,'0605',0,'es',NOW(),'agrupacion.605',NULL,NULL,7);
INSERT INTO T_Messages VALUES (80,'Agrupación {0}: {1}.',NOW(),1,'0699',0,'es',NOW(),'agrupacion.699',NULL,NULL,7);
INSERT INTO T_Messages VALUES (81,'Se comienza con la facturación.',NOW(),1,'0700',0,'es',NOW(),'facturacion.700',NULL,NULL,8);
INSERT INTO T_Messages VALUES (82,'Error al generar el pedido de ventas: {0}.',NOW(),1,'0702',0,'es',NOW(),'facturacion.702',NULL,NULL,8);
INSERT INTO T_Messages VALUES (83,'Facturación {0}: {1}.',NOW(),1,'0799',0,'es',NOW(),'facturacion.799',NULL,NULL,8);
INSERT INTO T_Messages VALUES (84,'El descuento informado es superior al importe total de la petición.',NOW(),1,'0801',0,'es',NOW(),'solicitudmuestreo.business.exception.importeDescuento',NULL,NULL,9);
INSERT INTO T_Messages VALUES (85,'Este descuento solo se puede aplicar en sector Clínica (CL).',NOW(),1,'0802',0,'es',NOW(),'solicitudmuestreo.business.exception.sectorDescuento',NULL,NULL,9);
INSERT INTO T_Messages VALUES (86,'No existe cargo para este descuento.',NOW(),1,'0803',0,'es',NOW(),'solicitudmuestreo.business.exception.cargoDescuento',NULL,NULL,9);
INSERT INTO T_Messages VALUES (87,'Es necesario que la petición tenga el precio bruto informado.',NOW(),1,'0804',0,'es',NOW(),'solicitudmuestreo.business.exception.precioBruto',NULL,NULL,9);
INSERT INTO T_Messages VALUES (88,'No se encontró la cuenta de mayor para la operación: {0} y el método de pago: {1}',NOW(),1,'0805',0,'es',NOW(),'privados.business.exception.cuenta.inexistente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (89,'No se encontró la solicitud de muestreo',NOW(),1,'0806',0,'es',NOW(),'privados.business.exception.solicitud.inexistente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (90,'No se ha podido determinar el estado de la petición',NOW(),1,'0807',0,'es',NOW(),'privados.business.exception.estado.indeterminado',NULL,NULL,9);
INSERT INTO T_Messages VALUES (91,'La petición es inválida para la operación a realizar',NOW(),1,'0808',0,'es',NOW(),'privados.business.exception.solicitud.invalida',NULL,NULL,9);
INSERT INTO T_Messages VALUES (92,'El importe del cobro es inválido. No se admiten cobros parciales',NOW(),1,'0809',0,'es',NOW(),'privados.business.exception.importe.cobro.invalido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (93,'El importe del anticipo no puede ser 0',NOW(),1,'0810',0,'es',NOW(),'privados.business.exception.importe.anticipo.zero',NULL,NULL,9);
INSERT INTO T_Messages VALUES (94,'El importe del anticipo no puede ser superior al importe total de la petición,',NOW(),1,'0811',0,'es',NOW(),'privados.business.exception.importe.anticipo.invalido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (95,'Error al procesar la solicitud.',NOW(),1,'0812',0,'es',NOW(),'solicitudindividual.business.exception.tipoPosicion',NULL,NULL,9);
INSERT INTO T_Messages VALUES (96,'Se genero el pedido Nro.: {0} y se contabilizó el cobro Nro.: {1}',NOW(),1,'0813',0,'es',NOW(),'privados.facturarcobrar.success',NULL,NULL,9);
INSERT INTO T_Messages VALUES (97,'Se genero el pedido Nro.: {0}. No se pudo contabilizar el cobro. Error: {1}',NOW(),1,'0814',0,'es',NOW(),'privados.facturarcobrar.solofacturo.success',NULL,NULL,9);
INSERT INTO T_Messages VALUES (98,'No es posible contabilizar un cobro para una petición NO Facturada',NOW(),1,'0815',0,'es',NOW(),'privados.business.exception.cobrar.nofacturada',NULL,NULL,9);
INSERT INTO T_Messages VALUES (99,'No es posible contabilizar un anticipo para una petición Facturada',NOW(),1,'0816',0,'es',NOW(),'privados.business.exception.cobrarAnticipo.facturada',NULL,NULL,9);
INSERT INTO T_Messages VALUES (100,'No es posible contabilizar un anticipo para una petición que no es del canal privado (PR)',NOW(),1,'0817',0,'es',NOW(),'privados.business.exception.cobrarAnticipo.noprivado',NULL,NULL,9);
INSERT INTO T_Messages VALUES (101,'La petición tiene un anticipo registrado',NOW(),1,'0818',0,'es',NOW(),'privados.business.exception.cobrarAnticipo.pendiente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (102,'La petición no admite un nuevo anticipo',NOW(),1,'0819',0,'es',NOW(),'privados.business.exception.cobrarAnticipo.noadmitido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (103,'No es posible contabilizar un depósito para una petición Facturada',NOW(),1,'0820',0,'es',NOW(),'privados.business.exception.cobrarDeposito.facturada',NULL,NULL,9);
INSERT INTO T_Messages VALUES (104,'No es posible contabilizar un depósito para una petición del canal privado (PR)',NOW(),1,'0821',0,'es',NOW(),'privados.business.exception.cobrarDeposito.canalpr',NULL,NULL,9);
INSERT INTO T_Messages VALUES (105,'La petición no aplica para poder contabilizar un Depósito',NOW(),1,'0822',0,'es',NOW(),'privados.business.exception.cobrarDeposito.nodeposito',NULL,NULL,9);
INSERT INTO T_Messages VALUES (106,'La petición tiene un deposito registrado',NOW(),1,'0823',0,'es',NOW(),'privados.business.exception.cobrarDeposito.pendiente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (107,'La petición no admite un nuevo depósito',NOW(),1,'0824',0,'es',NOW(),'privados.business.exception.cobrarDeposito.noadmitido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (108,'No se han registrado depósitos para la petición',NOW(),1,'0825',0,'es',NOW(),'privados.business.exception.devolucion.sin.depositos',NULL,NULL,9);
INSERT INTO T_Messages VALUES (109,'No se han informado medios de pago para hacer la devolución',NOW(),1,'0826',0,'es',NOW(),'privados.business.exception.devolucion.mediosPago',NULL,NULL,9);
INSERT INTO T_Messages VALUES (110,'No se han registrado anticipos para la petición',NOW(),1,'0827',0,'es',NOW(),'privados.business.exception.devolucion.sin.anticipos',NULL,NULL,9);
INSERT INTO T_Messages VALUES (111,'La petición no tiene importes pendientes a devolver',NOW(),1,'0828',0,'es',NOW(),'privados.business.exception.devolucion.pendientes',NULL,NULL,9);
INSERT INTO T_Messages VALUES (112,'No se puede devolver un importe mayor al de los anticipos o depósitos',NOW(),1,'0829',0,'es',NOW(),'privados.business.exception.devolucion.importeMayor',NULL,NULL,9);
INSERT INTO T_Messages VALUES (113,'No se admiten devoluciones parciales',NOW(),1,'0830',0,'es',NOW(),'privados.business.exception.devolucion.parciales',NULL,NULL,9);
INSERT INTO T_Messages VALUES (114,'No se han informado medios de pago para hacer el abono',NOW(),1,'0831',0,'es',NOW(),'privados.business.exception.abono.mediosPago',NULL,NULL,9);
INSERT INTO T_Messages VALUES (115,'No se encontraron cobros para abonar',NOW(),1,'0832',0,'es',NOW(),'privados.business.exception.abono.nocobros',NULL,NULL,9);
INSERT INTO T_Messages VALUES (116,'No se puede abonar un importe mayor a lo cobrado',NOW(),1,'0833',0,'es',NOW(),'privados.business.exception.abono.importeMayor',NULL,NULL,9);
INSERT INTO T_Messages VALUES (117,'No se admiten abonos parciales',NOW(),1,'0834',0,'es',NOW(),'privados.business.exception.abono.parciales',NULL,NULL,9);
INSERT INTO T_Messages VALUES (118,'La petición tiene un cobro registrado',NOW(),1,'0835',0,'es',NOW(),'privados.business.exception.cobrar.pendiente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (119,'La petición no admite un nuevo cobro',NOW(),1,'0836',0,'es',NOW(),'privados.business.exception.cobrar.noadmitido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (120,'La petición se encuentra en estado: {0} y no es compatible con la operación: {1}',NOW(),1,'0837',0,'es',NOW(),'privados.business.exception.estado.incompatible',NULL,NULL,9);
INSERT INTO T_Messages VALUES (121,'La petición tiene un abono registrado',NOW(),1,'0838',0,'es',NOW(),'privados.business.exception.abono.pendiente',NULL,NULL,9);
INSERT INTO T_Messages VALUES (122,'La petición no admite un nuevo abono',NOW(),1,'0839',0,'es',NOW(),'privados.business.exception.abono.noadmitido',NULL,NULL,9);
INSERT INTO T_Messages VALUES (123,'La petición pertenece al canal Grandes Cliente y no tiene alerta configurada para ser tratada en el monitor de Privados',NOW(),1,'0840',0,'es',NOW(),'privados.business.exception.alertaPrivados.gcsinalerta',NULL,NULL,9);
INSERT INTO T_Messages VALUES (124,'La petición tiene informadas las siguientes alertas: {0} y no tienen permitida la operación: {1} en la delegación.',NOW(),1,'0841',0,'es',NOW(),'privados.business.exception.alertaPrivados.nooperacionconfig',NULL,NULL,9);
INSERT INTO T_Messages VALUES (125,'La petición tiene informada el alerta: {0} - {1} y no está permitido gestionarla desde delegación.',NOW(),1,'0842',0,'es',NOW(),'privados.business.exception.alertaPrivados.nodelegacion',NULL,NULL,9);
INSERT INTO T_Messages VALUES (126,'La fecha de la petición ha superado el limite de días para ser gestionada desde delegación.',NOW(),1,'0843',0,'es',NOW(),'privados.business.exception.alertaPrivados.expirada',NULL,NULL,9);
INSERT INTO T_Messages VALUES (127,'No se encontraron peticiones a procesar',NOW(),1,'0844',0,'es',NOW(),'privados.business.exception.multiple.lista.vacia',NULL,NULL,9);
INSERT INTO T_Messages VALUES (128,'La petición {0} se encuentra en estado {1} por lo que no es facturable',NOW(),1,'0845',0,'es',NOW(),'privados.business.exception.multiple.estado.nofacturable',NULL,NULL,9);
INSERT INTO T_Messages VALUES (129,'La petición {0} tiene movimientos contables realizados de forma individual',NOW(),1,'0846',0,'es',NOW(),'privados.business.exception.multiple.movimiento.individual',NULL,NULL,9);
INSERT INTO T_Messages VALUES (130,'No es posible tratar las peticiones, existen peticiones que no cumplen con los criterios de agrupación',NOW(),1,'0847',0,'es',NOW(),'privados.business.exception.multiple.agrupacion',NULL,NULL,9);
INSERT INTO T_Messages VALUES (131,'No se han indicado los datos de pagador',NOW(),1,'0848',0,'es',NOW(),'privados.business.exception.multiple.pagador.noinformado',NULL,NULL,9);
INSERT INTO T_Messages VALUES (132,'El pagador nro: {0} no ha sido encontrado',NOW(),1,'0849',0,'es',NOW(),'privados.business.exception.multiple.pagador.noencontrado',NULL,NULL,9);
INSERT INTO T_Messages VALUES (133,'La operación {0} no está permitida sobre estas peticiones',NOW(),1,'0850',0,'es',NOW(),'privados.business.exception.multiple.operacion.invalida',NULL,NULL,9);
INSERT INTO T_Messages VALUES (134,'Las peticiones solicitadas no están agrupadas y no pueden ser procesadas',NOW(),1,'0851',0,'es',NOW(),'privados.business.exception.multiple.noexisteagrupado',NULL,NULL,9);
INSERT INTO T_Messages VALUES (135,'Las peticiones no fueron encontradas bajo el identificador {0}',NOW(),1,'0852',0,'es',NOW(),'privados.business.exception.multiple.noencontrada',NULL,NULL,9);
INSERT INTO T_Messages VALUES (136,'El plazo de {0} días para efectuar la devolución del anticipo ha expirado. La delegación {1} no tiene permitido realizar la operación fuera de plazo.',NOW(),1,'0853',0,'es',NOW(),'privados.business.exception.anticipo.fueraplazo',NULL,NULL,9);
INSERT INTO T_Messages VALUES (137,'Privados {0}: {1}.',NOW(),1,'0899',0,'es',NOW(),'privados.899',NULL,NULL,9);
INSERT INTO T_Messages VALUES (138,'Se comienza el proceso de rectificación de la petición.',NOW(),1,'1000',0,'es',NOW(),'rectificacion.1000',NULL,NULL,10);
INSERT INTO T_Messages VALUES (139,'Se comienza el proceso de rectificación de la prueba {0}.',NOW(),1,'1001',0,'es',NOW(),'rectificacion.1001',NULL,NULL,10);
INSERT INTO T_Messages VALUES (140,'La petición no puede ser Rectificada porque se encuentra en el estado {0}.',NOW(),1,'1002',0,'es',NOW(),'rectificacion.1002',NULL,NULL,10);
INSERT INTO T_Messages VALUES (141,'La prueba no puede ser Rectificada porque se encuentra en el estado {0}.',NOW(),1,'1003',0,'es',NOW(),'rectificacion.1003',NULL,NULL,10);
INSERT INTO T_Messages VALUES (142,'Para las rectificaciones totales, no se ha de seleccionar ninguna prueba en específico.',NOW(),1,'1004',0,'es',NOW(),'rectificacion.1004',NULL,NULL,10);
INSERT INTO T_Messages VALUES (143,'No es posible realizar una rectificación total de la petición {0} seleccionando todas sus pruebas. Si desea realizar una rectificación total, realice dicho procedimiento mediante el aplicativo correspondiente.',NOW(),1,'1005',0,'es',NOW(),'rectificacion.1005',NULL,NULL,10);
INSERT INTO T_Messages VALUES (144,'Rectificación {0}: {1}.',NOW(),1,'1099',0,'es',NOW(),'rectificacion.1099',NULL,NULL,10);
INSERT INTO T_Messages VALUES (145,'La petición {0} se ha bloqueado correctamente.',NOW(),1,'0020',0,'es',NOW(),'peticion.bloqueada',NULL,NULL,1);
INSERT INTO T_Messages VALUES (146,'La petición {0} se ha desbloqueado correctamente.',NOW(),1,'0021',0,'es',NOW(),'peticion.desbloqueada',NULL,NULL,1);
INSERT INTO T_Messages VALUES (147,'Se han procesado las peticiones.',NOW(),1,'0017',0,'es',NOW(),'peticion.procesada',NULL,NULL,1);
INSERT INTO T_Messages VALUES (148,'La acción no esta permitida para el estado de petición {0} y estado de prueba {1}.',NOW(),1,'0022',0,'es',NOW(),'accion.no.permitida.prueba',NULL,NULL,1);
INSERT INTO T_Messages VALUES (149,'La prueba {0} se ha excluido correctamente.',NOW(),1,'0023',0,'es',NOW(),'prueba.excluida',NULL,NULL,1);
INSERT INTO T_Messages VALUES (150,'La prueba {0} no se ha podido excluir.',NOW(),1,'0024',0,'es',NOW(),'prueba.noexcluida',NULL,NULL,1);
INSERT INTO T_Messages VALUES (151,'No se cumplen las condiciones para establecer el estado {0} a la prueba {0}.',NOW(),1,'0025',0,'es',NOW(),'estados.condiciones.prueba',NULL,NULL,1);
INSERT INTO T_Messages VALUES (152,'Se han procesado las pruebas.',NOW(),1,'0026',0,'es',NOW(),'prueba.procesada',NULL,NULL,1);
INSERT INTO T_Messages VALUES (153,'La prueba es inválida para la operación a realizar.',NOW(),1,'0027',0,'es',NOW(),'prueba.invalida.proceso',NULL,NULL,1);
INSERT INTO T_Messages VALUES (154,'Proceso de facturación ejecutado.',NOW(),1,'0701',0,'es',NOW(),'facturacion.701',NULL,NULL,8);
INSERT INTO T_Messages VALUES (155,'Se genero el pedido de ventas: {0}',NOW(),1,'0703',0,'es',NOW(),'facturacion.703',NULL,NULL,8);
INSERT INTO T_Messages VALUES (156,'El proceso de facturación se ha ejecutado correctamente para el cliente {0} para las fechas {1} a {2} con el código de ejecución {3}.',NOW(),1,'0710',0,'es',NOW(),'facturacion.710',NULL,NULL,8);
INSERT INTO T_Messages VALUES (157,'Ha ocurrido un error al ejecutar el proceso de facturación: {0}',NOW(),1,'0711',0,'es',NOW(),'facturacion.711',NULL,NULL,8);
INSERT INTO T_Messages VALUES (158,'{0}',NOW(),1,'0712',0,'es',NOW(),'facturacion.712',NULL,NULL,8);
INSERT INTO T_Messages VALUES (159,'Se ha establecido el código de factura.',NOW(),1,'0713',0,'es',NOW(),'facturacion.713',NULL,NULL,8);
INSERT INTO T_Messages VALUES (159,'703',Se genero el pedido de ventas: {0},1,'0713',0,'es',NOW(),'facturacion.713',NULL,NULL,8);
INSERT INTO T_Messages VALUES (160,'710',El proceso de facturación se ha ejecutado correctamente para el cliente {0} para las fechas {1} a {2} con el código de ejecución {3}.,1,'0714',0,'es',NOW(),'facturacion.714',NULL,NULL,8);
INSERT INTO T_Messages VALUES (161,'711',Ha ocurrido un error al ejecutar el proceso de facturación: {0},1,'0715',0,'es',NOW(),'facturacion.715',NULL,NULL,8);
INSERT INTO T_Messages VALUES (162,'Se ha simulado la orden de ventas de manera exitosa.',NOW(),1,'0716',0,'es',NOW(),'facturacion.716',NULL,NULL,8);
INSERT INTO T_Messages VALUES (163,'El pedido no se puede generar: {0}',NOW(),1,'0717',0,'es',NOW(),'facturacion.717',NULL,NULL,8);
INSERT INTO T_Messages VALUES (164,'Se ha establecido el estado {0} a la prefactura {1}.',NOW(),1,'0108',0,'es',NOW(),'recepcion.108',NULL,NULL,2);
