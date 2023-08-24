FROM mcr.microsoft.com/dotnet/framework/sdk:4.8.1
ENV DevHub=C:/ELITech/DevHub
ENV Scripts=${DevHub}/Scripts
COPY Scripts ${Scripts}