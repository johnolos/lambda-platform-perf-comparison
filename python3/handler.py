import json

def fib(n):
    if n == 1 or n == 2:
        return 1
    if n == 3:
        return 2
    return fib(n-1) + fib(n-2)

def fibonacci(event, context):
    return {
        "statusCode": 200,
        "body": str(fib(35))
    }
