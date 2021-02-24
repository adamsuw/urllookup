# urllookup
URL lookup Web Service

Introduction

This simple webservice respond to GET requests where the caller passes in a URL and the service responds with information about that url responding if the url is safe or not. 

The GET requests look like this:
GET /urlinfo/1/{hostname_and_port}/{original_path_and_query_string}

My solution is to have node application on Node.js  server and Load Balance using Nginx server for all requests/connections to a Node server.

Nodeserver - Nodejs server serves as the webservice server
Postgres - is the sql database that host the URL
Nginx - Acts as the load balancer for the nodes and also scale the node

The GET hits http://localhost/info
