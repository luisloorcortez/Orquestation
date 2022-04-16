# Tuning wordpress image with vasrnish

## In this folder you can find the folloging features:
### docker-compose: This file has the following features:
               1.-  db MySql this be used for the wordpress image below.
                    This image was programmed with the basic, such as: user, password, name db, root pasdword.
                    The port of exposure was configured to operate within  the docker network, this will be created later.
                    this fecture has externed folder for the data persistence. This is on de root patch. (db_data)
  
               2.-  wordpress image, this is using such as web page.
                    this imsage was configured with the basic parameter, such as: db user, password, name db, externed folder for data
                    the folder data is externed, for information persistence. In case wath do you want use a load balancer, and "clone" this web
                    using the same persistence information inside the externed folder on the root path. (w_data)

               3.-  varnish image, this is a proxy what will be used such as wordpress accelerator. For configure this, use the file Default.xxx
                    on the root path. for more information, see:
 
                    curl: https://www.varnish-software.com/developers/tutorials/running-varnish-docker/

               4.-  phpMyAdmin image, this will be used such as db administrator. This is linhed with db image thrpugh the docker network. 
                    for more information, see:
                 
                    curl: https://hub.docker.com/r/phpmyadmin/phpmyadmin/
               
               5.-  Docker network to operate localy. 

# WORK IN PROGRESS
