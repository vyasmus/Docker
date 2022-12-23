FROM openjdk:11
COPY target/hello-1.0.0.jar hello-1.0.0.jar
CMD ["java", "-jar", "hello-1.0.0.jar"]
