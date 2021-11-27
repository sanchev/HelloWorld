FROM adoptopenjdk/openjdk15:ubi
ARG JAR_FILE=target/*.jar
ENV MESSAGE_TEXT=${MESSAGE_TEXT}
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dmessage.text=${MESSAGE_TEXT}", "-jar", "app.jar"]