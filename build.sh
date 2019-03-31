echo "$(date) Obtaining current git sha for tagging the docker image"
headsha=$(git rev-parse --verify HEAD)

docker build -t polyverse/alpine-dev:$headsha .
docker tag polyverse/alpine-dev:$headsha polyverse/alpine-dev:latest
docker push polyverse/alpine-dev:$headsha
docker push polyverse/alpine-dev:latest

