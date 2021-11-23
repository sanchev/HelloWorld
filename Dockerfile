FROM maven:3.8.3-adoptopenjdk-15 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -B package --file pom.xml -DskipTests

FROM adoptopenjdk/openjdk15:ubi
COPY --from=build /workspace/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
