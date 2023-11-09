### Build Image with 1.0.0 and latest tag
```
docker build -t coffee-project:1.0.0 -t coffee-project -f docker/Dockerfile .
```

### Run docker image
```
docker run -d -p 3000:3000 --name coffee-project coffee-project:1.0.0
```

### Run docker image (using docker-compose)
```
cd docker
docker-compose up -d
```

### Exec inside the docker
```
docker exec -it coffee-project /bin/sh
```


