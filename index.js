const load = require('./load.js');
const serve = require('./serve.js');

const adapt = (functionPath)=>{
  const fn = load(functionPath);
  serve(fn);
}


module.exports = {
  adapt,
}
