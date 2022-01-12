# Main commands for test flask app:

## Prerequisites:
- aws cli with correct profile access should be configured;

## Build app
```
AWS_PROFILE=default aws_account=111122223333 bash start.sh
```

## Deploy app
```
cd tf && AWS_PROFILE=default terraform plan -var="aws_account=111122223333"

cd tf && AWS_PROFILE=default terraform apply -var="aws_account=111122223333"
```

## Destroy testing infrastructure
```
cd tf && AWS_PROFILE=default terraform destroy
```