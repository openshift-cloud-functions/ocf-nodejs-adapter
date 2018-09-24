module.exports = function(functionPath) {
  console.log( "loading: " + functionPath);
  return require(process.cwd() + "/" + functionPath);
}
