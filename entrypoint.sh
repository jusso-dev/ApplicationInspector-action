#!/bin/sh

# install depends for dotnet core
apk add --no-cache libstdc++ libintl icu

# install bash
apk add --update bash

cd /AppInspector

chmod +x ./ApplicationInspector.CLI
./ApplicationInspector.CLI analyze