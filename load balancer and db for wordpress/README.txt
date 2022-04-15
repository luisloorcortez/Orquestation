nginx load balancer and db for worpress.
in this folder you can find the faollowing files:

docker-compose: This file has the following features:
                
                #MySql
                1.- Mysql db container, programmed in the base state.
                    this has external folder for data persistence
                
                #Wordpress image
                2.- wordpress image, programmed in the base state, is linked to the db,
                    this has external folder for data persistence. This container shares the data with
                    the following wordpress container.

                #Wordpress image
                3.- wordpress image, programmed in the base state, has been linked to the db,
                   this has external folder for data persistence. This container shares the data with
                    the old wordpress container.

                *As you can see, wordpress containers are clones, they take their data from the same external folder,
                 They will be used by the load balancer...

                #PimMyAdmin
                4.- set my admin image, it will be used as db manager. It's linked with db of course.

                #Nginx
                5.- Image of nginx as load balancer, it has its external file configured, for data persistence and it is
                    linked with your wordress images. You know, send requests between wordpress containers.

                6.- Local network for the project, in this way, all its images work on the same network.

ginx.conf: este archivo tiene dentro la configuración predeterminada para el balanceador de carga.

db_data: esta carpeta tiene dentro los datos generados por el contenedor db.

wdata: Este forlder tiene en su interior datos generados por los contenedores de wordpress.
