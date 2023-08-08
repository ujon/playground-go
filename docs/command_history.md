# Command History

```shell
go mod init playground-go
touch main.go
go get -u github.com/aws/aws-lambda-go
# GOOS=linux: AWS lambda running on Linux
# Check 'main' file
GOOS=linux GOARCH=amd64 go build main.go
# Zip file is going to be uploaded to AWS Lambda
zip main.zip main
```