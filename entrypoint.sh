#!/bin/bash

zipFile=https://github.com/microsoft/ApplicationInspector.git

git clone $zipFile code-to-scan

dotnet /app/ApplicationInspector/ApplicationInspector.CLI.dll analyze -s /app/code-to-scan -b -x high

echo ::set-output scan-results=ApplicationInspector/output.json