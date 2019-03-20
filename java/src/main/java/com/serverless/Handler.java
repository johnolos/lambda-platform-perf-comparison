package com.serverless;

import java.util.Map;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class Handler implements RequestHandler<Map<String, Object>, ApiGatewayResponse> {

	private int fibonacci(int n) {
		if (n == 1 || n == 2) {
			return 1;
		}
		if (n == 3) {
			return 2;
		}

		return fibonacci(n - 1) + fibonacci(n - 2);
	}

	@Override
	public ApiGatewayResponse handleRequest(Map<String, Object> input, Context context) {
		return ApiGatewayResponse.builder()
				.setStatusCode(200)
				.setRawBody(String.valueOf(fibonacci(35)))
				.build();
	}
}
