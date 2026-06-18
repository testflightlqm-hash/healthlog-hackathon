FROM eclipse-temurin:17-jdk-alpine
COPY 你的正確jar檔名.jar app.jar
CMD ["java", "-jar", "app.jar"]
