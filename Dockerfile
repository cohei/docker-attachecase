FROM openjdk:17-bullseye

ENV ATTACHECASE_VERSION 075

WORKDIR /app

ENV DOWNLOWAD_URL \
        http://maruuofactory.life.coocan.jp/attachecase/download/ver${ATTACHECASE_VERSION}/attachecase${ATTACHECASE_VERSION}.zip
ENV NAME attachecase${ATTACHECASE_VERSION}
RUN curl --remote-name $DOWNLOWAD_URL && \
        unzip $NAME.zip && \
        mv $NAME/attachecase.jar ./ && \
        rm -r $NAME.zip $NAME

WORKDIR /app/data

ENTRYPOINT ["java", "-jar", "/app/attachecase.jar"]
CMD ["-?"]
