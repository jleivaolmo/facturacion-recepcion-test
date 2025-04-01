DELETE FROM "IT_CONFIGURACIONFIELDSTATUS";
DELETE FROM "IT_ENTITYFIELDSNAME";
DELETE FROM "IT_ENTITYLISTNAME";

INSERT INTO "IT_ENTITYLISTNAME" (id,entity_creation_timestamp,entity_version,grupoEntidad,inactive,last_updated_timestamp,nombreEntidad,statusObjeto,user_create,user_update) VALUES (99,NOW(), 1,'1',0,NOW(), 'PetMuesAlerta', 1,NULL,NULL);
INSERT INTO "IT_ENTITYLISTNAME" (id,entity_creation_timestamp,entity_version,grupoEntidad,inactive,last_updated_timestamp,nombreEntidad,statusObjeto,user_create,user_update) VALUES (100,NOW(), 1,'1',0,NOW(), 'PetMuesItemAlerta', 1,NULL,NULL);

INSERT INTO "IT_ENTITYFIELDSNAME" (ID,entity_creation_timestamp,entity_version,inactive,last_updated_timestamp,NOMBRECAMPO,TIPOCAMPO,user_create,user_update,fk_EntityName) VALUES (1380,NOW(), 1,0, NOW(), 'codigoAlerta',5,'Generic','Generic',99);
INSERT INTO "IT_ENTITYFIELDSNAME" (ID,entity_creation_timestamp,entity_version,inactive,last_updated_timestamp,NOMBRECAMPO,TIPOCAMPO,user_create,user_update,fk_EntityName) VALUES (1388,NOW(), 1,0, NOW(), 'codigoAlerta',5,'Generic','Generic',100);

INSERT INTO "IT_CONFIGURACIONFIELDSTATUS"(ID,ALLOWCHANGES,CONFIGURATIONLEVEL,ENTITY_CREATION_TIMESTAMP,ENTITY_VERSION,INACTIVE,LAST_UPDATED_TIMESTAMP,USER_CREATE,USER_UPDATE,FK_ENTITYFIELDNAME,FK_MASDATAESTADOSGRUPO) VALUES (71,0,'C',NOW(),1,0,NOW(),'Generic','Generic',1380,4);
INSERT INTO "IT_CONFIGURACIONFIELDSTATUS"(ID,ALLOWCHANGES,CONFIGURATIONLEVEL,ENTITY_CREATION_TIMESTAMP,ENTITY_VERSION,INACTIVE,LAST_UPDATED_TIMESTAMP,USER_CREATE,USER_UPDATE,FK_ENTITYFIELDNAME,FK_MASDATAESTADOSGRUPO) VALUES (73,0,'P',NOW(),1,0,NOW(),'Generic','Generic',1388,4);
