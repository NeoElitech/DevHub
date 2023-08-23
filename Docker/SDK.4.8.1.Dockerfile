FROM mcr.microsoft.com/dotnet/framework/sdk:4.8.1
ENV DEV_HUB=C:/ELITech/DevHub
COPY ${WORKSPACE}/Scripts ${DEV_HUB}/Scripts