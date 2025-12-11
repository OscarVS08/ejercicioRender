# Usa imagen de Java 17
FROM eclipse-temurin:17-jdk-jammy

# Crea un directorio para la app
WORKDIR /app

# Copia el archivo JAR generado
COPY target/demo-api-render-1.0.0.jar app.jar

# Expone el puerto que usará Render
EXPOSE 8080

# Comando para ejecutar el JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
