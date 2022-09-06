function fn(){
var env = karate.env;

if(!env)
{
    env='dev';
}

var config = {
  env: env,
  myVarName: 'hello karate',
  baseUrl: 'https://gorest.co.in'
}

if (env == 'dev')
{
 //customize
 // e.g. config.foo ='bar';

}else if (env == 'e2e'){
// customiza

}
return config;
}