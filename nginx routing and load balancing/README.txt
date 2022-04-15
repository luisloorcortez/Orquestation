Nginx server an routing anf load balancer.
In this nginx server project you can'll found:

1- docker-compose: Inside you can find programed three nginx server image, they work as host.
   This nginx server has your owr its IP and his externed volume, for data percistenced.

1.2- one nginx server image, this work as a roter and load balancer.
     This nginx server has your its owr IP and his externed volume, for data percistenced.     

1.3- one network. This will be used for the projet. 
     This neetwork has his it own IP range. 

2- nginx.conf: Inside you can find the default configuration to perform the load balancer.
