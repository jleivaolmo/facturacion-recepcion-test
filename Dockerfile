FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /facturacion-recepcion-test

# Copiar los JAR necesarios para el repositorio local de Maven
COPY libs/facturacion-core-test.jar /facturacion-recepcion-test/
COPY libs/facturacion-resources.jar /facturacion-recepcion-test/

#Limpieza de librerias
RUN mvn clean install -U

# Instalar los archivos en el repositorio local de Maven dentro del contenedor
RUN mvn install:install-file -Dfile=/facturacion-recepcion-test/facturacion-core-test.jar -DgroupId=com.echevarne.sap.cloud.facturacion.core -DartifactId=facturacion-core-test -Dversion=1.0.0-SNAPSHOT -Dpackaging=jar && mvn install:install-file -Dfile=/facturacion-recepcion-test/facturacion-resources.jar -DgroupId=com.echevarne.sap.cloud.facturacion.resources -DartifactId=facturacion-resources -Dversion=1.9.1-SNAPSHOT -Dpackaging=jar

# Copiar el código de la aplicación y compilarlo
COPY . /facturacion-recepcion-test
RUN mvn clean package -Dmaven.test.skip=true

# Crear la imagen final con solo el JAR de la aplicación
FROM openjdk:17
WORKDIR /facturacion-recepcion-test
COPY --from=build /facturacion-recepcion-test/target/facturacion-recepcion-test.jar /facturacion-recepcion-test/
CMD ["java", "-jar", "/facturacion-recepcion-test/facturacion-recepcion-test.jar"]
