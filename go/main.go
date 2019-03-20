package main

import (
	"context"
	"strconv"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func fib(n uint) uint {
  if n == 1 || n == 2 {
  	return 1
	} else if n == 3 {
		return 2
	}
  return fib(n-1) + fib(n-2)
}

func Handler(_ context.Context, request *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{Body: strconv.FormatUint(uint64(fib(35)), 10), StatusCode: 200}, nil
}

func main() {
	lambda.Start(Handler)
}
