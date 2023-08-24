FROM mcr.microsoft.com/dotnet/framework/sdk:4.8.1

# Environment variables
ENV DevHub=C:/ELITech/DevHub
ENV Scripts=$DevHub/Scripts
RUN SETX /M PATH "%PATH%;%Scripts%"

# Copy Resources
COPY Scripts $Scripts
