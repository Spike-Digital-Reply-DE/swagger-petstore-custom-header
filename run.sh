docker kill petimg
docker container rm petimg
docker image rm pet
mvn clean
mvn install
docker build --no-cache -t pet:latest .
docker run  --name petimg -d -p 8080:8080 pet