'use strict';

function fib(n) {
  if (n == 1 || n == 2) {
    return 1;
  }
  if (n == 3) {
    return 2;
  }
  return fib(n - 1) + fib(n - 2);
}

module.exports.fibonacci = (event, context, callback) => {
  const response = {
    statusCode: 200,
    body: fib(35).toString()
  };

  callback(null, response);
};
