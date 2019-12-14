# Requirements
* MySQL server will be accesible by Docker containers. You can use [official mysql image](https://hub.docker.com/r/mysql/mysql-server/)

# Quick start!
```
$ docker run -d --name facturascripts -p 80:80 facturascripts:latest
```

# Build your image!
```
$ git clone git@github.com:ialejandro/docker-facturascripts.git
$ cd docker-facturascript
$ docker build -t facturascripts:latest .
```
