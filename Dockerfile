FROM eclipse-temurin:17-jdk-alpine
# 安裝必要的基礎工具
RUN apk add --no-cache bash
COPY . .
# 賦予 gradlew 執行權限 (這是解決 Permission denied 的關鍵)
RUN chmod +x ./gradlew
RUN ./gradlew build -x test
CMD ["sh", "-c", "java -jar $(ls build/libs/*.jar | head -n 1)"]
