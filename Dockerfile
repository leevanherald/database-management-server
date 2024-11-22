FROM maven:3.8.4-openjdk-17-slim

WORKDIR /app

COPY . .

EXPOSE 9090 8080

RUN mvn clean install

CMD ["mvn", "spring-boot:run"]
