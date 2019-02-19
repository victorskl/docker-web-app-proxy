# docker-web-app-proxy

Dockerised for https://github.com/elmarquez/web-app-proxy

### run standalone

```
git clone https://github.com/victorskl/docker-web-app-proxy

cd docker-web-app-proxy

cp env.sample .env

git clone https://github.com/elmarquez/web-app-proxy.git

docker build -t web-app-proxy .

docker-compose -f standalone.yml -p dev up -d
```

### build and release image

```
git clone https://github.com/elmarquez/web-app-proxy.git

docker build -t web-app-proxy .

docker images

docker tag web-app-proxy:latest victorskl/web-app-proxy:0.1.0

docker push victorskl/web-app-proxy:0.1.0
```
