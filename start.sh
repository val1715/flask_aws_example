#!/bin/bash

echo ":: Using AWS account : [${aws_account}]"

docker build -t test2:2 .

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin "${aws_account}.dkr.ecr.us-east-1.amazonaws.com"

docker tag test2:2 "${aws_account}.dkr.ecr.us-east-1.amazonaws.com/test2:2"
docker push "${aws_account}.dkr.ecr.us-east-1.amazonaws.com/test2:2"


