FROM eclipse-temurin:17-jdk-alpine
COPY . .
RUN ./gradlew build -x test
# 這行會自動搜尋 build/libs 下所有的 jar 檔並執行第一個找到的
CMD ["sh", "-c", "java -jar $(ls build/libs/*.jar | head -n 1)"]