FROM amazoncorretto:17.0.9
COPY ./target/tdd-supermarket-1.0.0-SNAPSHOT.jar /home/appuser/
USER 1001
WORKDIR /home/appuser/
ENTRYPOINT ["java","-jar","tdd-supermarket-1.0.0-SNAPSHOT.jar"]
EXPOSE 8080