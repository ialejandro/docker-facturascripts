![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ialejandro/facturascripts) ![Docker Pulls](https://img.shields.io/docker/pulls/ialejandro/facturascripts) 

## Docker FacturasScripts

This repository build a Docker image based on the project of [NeoRazorX/facturascripts](https://github.com/NeoRazorX/facturascripts).

## Requirements
* **mysql-server**. You can use [official Docker mysql image](https://hub.docker.com/r/mysql/mysql-server/) or use your currently mysql server installation.

## Quick start

```
$ docker run -d --name facturascripts -p 80:80 ialejandro/facturascripts:latest
```

## Build your image

```
$ git clone git@github.com:ialejandro/docker-facturascripts.git
$ cd docker-facturascript
$ docker build -t facturascripts:latest .
```

## TODO

- Create docker-compose.

## Contributing

Refer to [CONTRIBUTING.md](https://github.com/ialejandro/docker-facturascripts/blob/master/CONTRIBUTING.md).

## License

Apache License 2.0. Refer to [LICENSE](https://github.com/ialejandro/docker-facturascripts/blob/master/LICENSE).
