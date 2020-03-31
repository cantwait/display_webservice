#!/usr/bin/env bash
cd linux
upx display_webservice_linux
cd ..
cd mac
upx display_webservice_mac
cd ..
cd windows
upx display_wenservice_windows.exe
cd ..
docker rmi -f petrjahoda/display_webservice:latest
docker build -t petrjahoda/display_webservice:latest .
docker push petrjahoda/display_webservice:latest

docker rmi -f petrjahoda/display_webservice:2020.1.3
docker build -t petrjahoda/display_webservice:2020.1.3 .
docker push petrjahoda/display_webservice:2020.1.3
