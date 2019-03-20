use lambda_runtime::{error::HandlerError, Context};
use lambda_http::{lambda, IntoResponse, Request, Response};

fn fibonacci(n: i32) -> u64 {
    match n {
        1 | 2 => 1,
        3 => 2,
        _ => fibonacci(n - 1) + fibonacci(n - 2)
    }
}

fn main() {
    lambda!(handler);
}

fn handler(_e: Request, _c: Context) -> Result<impl IntoResponse, HandlerError> {
    Ok(Response::new(fibonacci(35).to_string()))
}
