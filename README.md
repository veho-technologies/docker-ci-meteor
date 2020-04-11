# docker-ci-meteor
Docker images for building meteor apps in CircleCI

This branch uses node 12.

Build a tagged image
```
docker build -t veho/ci-meteor:1.10 .
```

Publish the image to Docker Hub
```
docker push veho/ci-meteor:1.10
```