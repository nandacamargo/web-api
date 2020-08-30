#Build
docker build -t dotnet-first-app .


#Execute
docker run -d -it -p 5000:80 --name dotnet--app -v $(pwd):/first_app dotnet-first-app

#Stop container
docker container stop <container_id>

#Start container
docker container start <container_id>

#Logs
docker logs <container_id>
