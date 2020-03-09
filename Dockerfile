FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster

RUN apt-get update && apt install unzip

WORKDIR /app

ENV VERSION=1.1.4

RUN curl -L https://github.com/microsoft/ApplicationInspector/releases/download/v${VERSION}/ApplicationInspector_linux_${VERSION}.zip -o /app/appinspect.zip && \
    unzip appinspect.zip && \
    mv /app/ApplicationInspector_${VERSION}/ /app/ApplicationInspector

RUN apt install git-all -y

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]