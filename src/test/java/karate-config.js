function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.configure('ssl', { trustAll: true });

  if (env === 'pre') {
    karate.log('ENV PRE >>>>>>>>>>>>>');
  } else if (env === 'des') {
    karate.log('ENV DES >>>>>>>>>>>>>');
  }


  var config = {
    env: env,
    myVarName: 'someValue',

  }

  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}