use lambda_runtime::{error::HandlerError, Context};
use lambda_http::{lambda, IntoResponse, Request, Response};

fn main() {
    lambda!(handler);
}

fn handler(_e: Request, _c: Context) -> Result<impl IntoResponse, HandlerError> {
    Ok(Response::builder().status(200).body("hello").unwrap())
}
