FROM eclipse-temurin:17-jdk-alpine
COPY . .
# 直接使用 Spring Boot 的 bootRun 啟動，最穩定
CMD ["./gradlew", "bootRun"]
