echo "$(date) Obtaining current git sha for tagging the docker image"
headsha=$(git rev-parse --verify HEAD)

echo "Pulling latest polyverse/alpine-dev"
docker pull polyverse/alpine-dev

echo "Building polyverse/alpine-dev-apk-tools:$headsha..."
docker build -t polyverse/alpine-dev-apk-tools:$headsha .

docker tag polyverse/alpine-dev-apk-tools:$headsha polyverse/alpine-dev-apk-tools:latest
docker push polyverse/alpine-dev-apk-tools:$headsha
docker push polyverse/alpine-dev-apk-tools:latest

