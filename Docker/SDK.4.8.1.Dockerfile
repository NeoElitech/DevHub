FROM mcr.microsoft.com/dotnet/framework/sdk:4.8.1
ENV DevHub=C:/ELITech/DevHub
ENV Scripts=${DevHub}/Scripts
ENV PATH="${Scripts};${PATH}"
COPY Scripts ${Scripts}