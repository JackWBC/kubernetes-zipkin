FROM java:8
EXPOSE 8080
ARG JAR_FILE
ADD target/${JAR_FILE} /kubernetes-zipkin.jar
ENTRYPOINT ["java", "-jar","/kubernetes-zipkin.jar"]