# alpine-dev
A Dockerfile that creates a ready-to-use Alpine Development Environment

The created image is available on Docker Hub: https://cloud.docker.com/u/polyverse/repository/registry-1.docker.io/polyverse/alpine-dev

# Usage

```
docker run -it alpine-dev
```


# Rebuild the image

```
./build.sh
```

## Why not Docker Hub build?
Because the image takes a lot of time to build, it may exceed Docker Hub's build time. Also as aports updates,
it is useful to be able to build manually from time to time.

