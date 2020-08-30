#Source image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster
LABEL maintainer="Fernanda de Camargo"

ENV DIR="/first_app"
RUN mkdir $DIR
WORKDIR $DIR

#Copy csproj and restore deps
COPY *.csproj $DIR
RUN dotnet restore

#Copy files to workdir
COPY . $DIR

ENV ASPNETCORE_URLS=http://+:80
EXPOSE 5000

#Command to be executed
ENTRYPOINT ["dotnet", "watch", "run", "bin/Debug/netcoreapp3.1/FirstApp.API.dll", "--urls", "http://+:80"]

