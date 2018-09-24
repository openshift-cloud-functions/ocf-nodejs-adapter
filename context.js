
class Context {
  constructor(response) {
    this.response = response;
  }

  done(err, result) {
    this.response.statusCode = 200;
    this.response.end( JSON.stringify(result) );
  }

}

module.exports = Context;
