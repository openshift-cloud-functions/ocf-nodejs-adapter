
const Adapter = require("../index.js")

var fnPath = process.argv[2];
if ( ! fnPath ) {
  const packageJson = require(process.cwd() + '/package.json')
  console.log( packageJson );
  fnPath = packageJson['main'];
}

Adapter.adapt(fnPath);

//var fn = Adapter.load(process.argv[2]);

//serve(fn);




