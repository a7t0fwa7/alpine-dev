# DEPRECATION NOTICE

Please note that this repository has been deprecated and is no longer actively maintained by Polyverse Corporation.  It may be removed in the future, but for now remains public for the benefit of any users.

Importantly, as the repository has not been maintained, it may contain unpatched security issues and other critical issues.  Use at your own risk.

While it is not maintained, we would graciously consider any pull requests in accordance with our Individual Contributor License Agreement.  https://github.com/polyverse/contributor-license-agreement

For any other issues, please feel free to contact info@polyverse.com

---

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

