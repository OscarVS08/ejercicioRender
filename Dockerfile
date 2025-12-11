# Usamos Java 17
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copiamos el JAR ya generado
COPY target/demo-api-render-1.0.0.jar app.jar

# Exponemos el puerto que usa Render
EXPOSE 8081

# Comando para ejecutar la app
ENTRYPOINT ["java", "-jar", "app.jar"]
