FROM eclipse-temurin:17-jdk-alpine
COPY . .
# 改用 Gradle 的 bootRun 直接啟動原始程式
RUN chmod +x ./gradlew
CMD ["./gradlew", "bootRun"]
