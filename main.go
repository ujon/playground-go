package main

import (
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"log"
)

func main() {
	lambda.Start(handler)
}

func handler(request events.APIGatewayCustomAuthorizerRequest) (events.APIGatewayProxyResponse, error) {
	log.Println("Hello world")

	response := events.APIGatewayProxyResponse{
		StatusCode: 200,
	}

	return response, nil
}
