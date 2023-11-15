function fn() {
  var env = karate.env; // get system property 'karate.env'
  //karate.log('karate.env system property was:', env);
  //karate.log('PRIMERA EJECUCIÓN');

  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    baseUrl: 'https://petstore.swagger.io/v2/user',
    baseProd: 'https://fakestoreapi.com/products',
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}