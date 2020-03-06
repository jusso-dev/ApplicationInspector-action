#!/bin/bash

zipFile=https://github.com/microsoft/ApplicationInspector/releases/download/v1.4.4/ApplicationInspector_linux_1.1.4.zip

curl $zipFile > /app/code-to-scan.zip && \
    ls -la && \
    unzip /app/code-to-scan.zip

dotnet /app/ApplicationInspector/ApplicationInspector.CLI.dll analyze -s /app/code-to-scan -b -x high