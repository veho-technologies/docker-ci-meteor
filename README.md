# docker-ci-meteor
Docker images for building meteor apps in CircleCI

https://hub.docker.com/repository/docker/veho/ci-meteor

Build a tagged image
```
docker build -t veho/ci-meteor:1.10 .
```

Publish the image to Docker Hub
```
docker push veho/ci-meteor:1.10
```