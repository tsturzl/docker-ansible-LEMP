# docker-ansible-LEMP

Docker container running LEMP stack, provisioned with ansible for consistency and easy modifications.

## No DB!

If you run your database on a dedicated server, or in a different container(or you don't need one). Then there is a `tsturzl/docker-ansible-lemp-nodb` Docker image which you can use to deploy without mysql installed/running in the container.

## Up and running

The web root is configured at `/share/public`. So you if you decide to pull code into the shared directory you can compile it to a ./public directory in the project and mount to '/share/`. If this is not what you plan to do, then simply mount your directory to `/share/public`.

Example:

```
docker run -d \
-p 80:80 -p 3306:3306 \
-v /home/me/app:/share \
--restart=always \
--name=appname \
tsturzl/docker-ansible-lemp:latest
```