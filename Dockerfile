FROM eclipse-temurin:17-jdk-alpine
RUN apk add --no-cache bash
COPY . .
RUN ./gradlew build -x test
# 修改 CMD 指令，排除掉含有 -plain 的檔案
CMD ["sh", "-c", "java -jar $(ls build/libs/*.jar | grep -v 'plain' | head -n 1)"]
