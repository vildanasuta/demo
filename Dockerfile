FROM maven as build
WORKDIR /workspace
COPY . .
RUN mvn install
FROM openjdk:8
COPY --from=build /workspace/target/demo-0.0.1.jar ./
ENTRYPOINT ["java", "-jar","demo-0.0.1.jar]
EXPOSE 8080