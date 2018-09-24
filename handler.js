const Context = require('./context');

module.exports = function(fn) {
  return function(request, response) {
    const ctx = new Context(response);
    fn(ctx);
  }
}
