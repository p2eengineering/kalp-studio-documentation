#!/bin/sh -xe

ENVIRONMENT=$1
FRONTEND_HOST=$ENVIRONMENT-kalp-studio-doc
IMAGE_TAG=kalp-studio-doc:$ENVIRONMENT-$BUILD_NUMBER
case $ENVIRONMENT in
  "dev")
    SECRET_ARN=xxx
    CLOUDFRONT_ID=xxx
    ;;
  "qa")

    SECRET_ARN=xxx
    CLOUDFRONT_ID=xxx

    ;;
  "stg")
    SECRET_ARN=xxx
    CLOUDFRONT_ID=E3QG5RU6XX8VQ8
    ;;
  "prod")
    SECRET_ARN=xxx
    CLOUDFRONT_ID=xxx
    ;;
  *)
    ;;
esac

get_secrets () {
	aws secretsmanager get-secret-value --secret-id $SECRET_ARN --region ap-south-1 > secrets.json
}

docker_build () {

  rm -rf build
  mkdir build

  # docker build -t $IMAGE_TAG . --no-cache
  DOCKER_BUILDKIT=1 docker build -t $IMAGE_TAG --output build . --no-cache
}

sync_bucket () {
	# aws ecr get-login --no-include-email --region ap-south-1 | sh
	# docker push $IMAGE_TAG
	aws s3 sync --delete build s3://$FRONTEND_HOST
	aws cloudfront create-invalidation --distribution-id $CLOUDFRONT_ID --paths '/*'
}

cleanup () {
	rm -rf build
	rm -rf secrets.json
}

get_secrets
docker_build
sync_bucket
cleanup
