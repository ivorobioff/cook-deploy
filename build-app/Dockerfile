FROM openjdk:11.0.7-jdk

COPY ./tmp/ /src/

WORKDIR /src/cook-app

RUN ./gradlew build

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=prod","-jar","./build/libs/cook.jar"]