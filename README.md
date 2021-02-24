# urllookup
URL lookup Web Service

Introduction

This simple webservice respond to GET requests where the caller passes in a URL and the service responds with information about that url responding if the url is safe or not. 

The GET requests look like this:
GET /urlinfo/1/{hostname_and_port}/{original_path_and_query_string}

My solution is to have Nodejs node, webserver and reverse proxy using Nginx server for all requests/connections to a Node server and pullin URLs from the Postgres database

Nodeserver - Nodejs server sis the backend application servererves.
Postgres - is the sql database that stores URL
Nginx - is the webservice server that responds to HTTP request reverse proxy server and used in scsling the webserver to accomodate the growing number of HTTP request

The HTTP GET hits http://localhost:3000/info

The reverse proxy (Nginx) listen on port 80, nodeserver (Nodejs) points to the location block for the root URL (“/{hostname_and_port}/{original_path_and_query_string}")

Docker is used to put all the servers in containers and to scale the VM to accomodation the URL request