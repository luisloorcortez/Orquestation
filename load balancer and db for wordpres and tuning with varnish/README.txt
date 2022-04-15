nginx load balancer and db for worpress.
in this folder you can find the faollowing files:

docker-compose: This file has the following features:
                
                #MySql
                1.- Mysql db container, programmed in the base state.
                    this has external folder for data persistence. The folder with the configuration to this image is on the root path (db_data)

                
                #Wordpress images
                2.- wordpress image, programmed in the base state, is linked to the db,
                    this has external folder for data persistence. This container shares the data with
                    the following wordpress container. The folder with the configuration to this images is on the root path (wdata) 


                *As you can see, wordpress containers are clones, they take their data from the same external folder,
                 They will be used by the load balancer...
   
                #varnish
                4.- varnish image, this is a proxy what will be used such as wordpress accelerator. For configure this, use the file Default.xxx
                    on the root path. for more information, see:
 
                    curl: https://www.varnish-software.com/developers/tutorials/running-varnish-docker/ 

                #PimMyAdmin
                5.- PimMyAdmin, it will be used as db manager. It's linked with db of course. For more information, see:
                 
                    curl: https://hub.docker.com/r/phpmyadmin/phpmyadmin/

                #Nginx
                6.- Image of nginx as load balancer, it has its external file configured, for data persistence and it is
                    linked with your wordress images. You know, send requests between wordpress containers. The file to configure this is 
                    nginx.conf, this is on the root path. 



Local network for the project, in this way, all its images work on the same network.


