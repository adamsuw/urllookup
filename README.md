# urllookup
URL lookup Web Service

Introduction

This simple webservice respond to GET requests where the caller passes in a URL and the service responds with information about that url responding if the url is safe or not. 

The GET requests look like this:
GET /urlinfo/1/{hostname_and_port}/{original_path_and_query_string}
