# 1. OpenJDK 이미지를 베이스로 사용
FROM openjdk:21-jdk-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. JAR 파일 복사
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 4. 포트 노출 (Spring Boot 기본 포트 8080)
EXPOSE 8080

# 5. 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
