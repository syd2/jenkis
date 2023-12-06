
FROM alpine:latest

# Installer OpenJDK 8
RUN apk update && \
    apk add openjdk8

# Copier le programme Java dans le conteneur
COPY Main.java /app/Main.java

# Compiler le programme Java
RUN javac /app/Main.java

# Exécuter le programme Java
CMD ["java", "-cp", "/app", "Main"]
