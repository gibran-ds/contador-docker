#IMAGEN BASE JDK A UTILIZAR
FROM eclipse-temurin:17-jdk

#COPIAR JAR EJECUTABLE EN LA RUTA ESPECIFICADA
COPY /target/ContadorNumeros-1.0-SNAPSHOT.jar /usr/src/myapp/

#MOVERNOS A LA CARPETA DONDE ESTÁ EL JAR EJECUTABLE
WORKDIR /usr/src/myapp/

#COMMAND - EJECUTA EL COMANDO INDICADO
CMD ["java","-jar","ContadorNumeros-1.0-SNAPSHOT.jar"]

#CONSTRUIR IMAGEN
#docker build -t contador_numeros .

#CORRER EN CONTENEDOR
#docker run -it contador_numeros