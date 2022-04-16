# Nginx proxy with identity authenticator and IP filtering

## In this mini-proyect you can'll find:

## 1- docker-compose.yml: This have inside him declared two nginx server.
   The first, is a host server and the second, is a proxy server.
   The proxy server was programer for redirect the trafic to the first 
   server and make user control using the following files: default.conf and .htpasswd.

## 2- default.conf: This file has programmed within it the redirection to the host, 
   server including its IP (Host server). One more thing, it has ip based access control.
   This file is finding for the docker file for mounting in the proxy server. 

## 3- htpasswd: This file has the user password hashes inside, this file was generated
   using the htpasswd tool. This file is looked for by the docker-file to mount it as
   a volume. To see this, use ls -la.

