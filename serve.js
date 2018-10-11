
const handler = require('./handler');

const http = require('http');
const port = 8080;

module.exports = function(fn) {
  const server = http.createServer( handler(fn.adapt) );
  server.listen(port, (err)=>{
    console.log( "server listening on " + port);
  });

}

