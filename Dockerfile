FROM eclipse-temurin:17-jdk-alpine
COPY . .
# 執行這個指令來啟動專案，不用先 build
CMD ["./gradlew", "bootRun"]
