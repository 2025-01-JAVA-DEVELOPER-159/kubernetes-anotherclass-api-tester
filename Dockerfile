FROM openjdk:17.0.2
WORKDIR /usr/src/myapp
COPY ./build/libs/app-0.0.1-SNAPSHOT.jar /usr/src/myapp/app.jar
ENV SPRING_PROFILES_ACTIVE=local
ENTRYPOINT ["java", "-Dspring.profiles.active=${spring_profiles_active}","-jar", "/usr/src/myapp/app.jar"]
EXPOSE 8080