FROM openjdk:latest
LABEL title="javadocker"
LABEL developer="niall"
RUN ["useradd", "-ms", "/bin/bash", "niall"]
RUN apt-get update
USER niall
WORKDIR /home/niall/
COPY --chown=niall ./Selection.class ./
CMD java Selection
