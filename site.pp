include nginx

nginx::resource::server { 'domain.com':
  listen_port => 80,
  proxy       => 'http://10.10.10.10',
}

nginx::resource::location{'/resource2/':
  proxy => 'http://20.20.20.20' ,
  server => 'domain.com',

 }
