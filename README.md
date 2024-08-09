# dvmn-Docker-StaticJingaPlus

StaticJinjaPlus is a tool to build static sites using [Jinja](https://jinja.palletsprojects.com/).

StaticJinjaPlus github - https://github.com/MrDave/StaticJinjaPlus.git

DockerHub - https://hub.docker.com/repository/docker/malykh/static-jinja-plus

## Установка и запуск

### Установка Docker
Инструкция по установке Docker - https://docs.docker.com/desktop/install/windows-install/

### Создание сайтов
Для рендеринга html-шаблонов из шаблонов, запустите из командной строки:

```
sudo docker run -v <path to folder with templates>:opt/StaticJinjaPlus/templates -v <path to folder with result>:opt/StaticJinjaPlus/build --rm malykh/static-jinja-plus
```

Пример вывода в консоль:
```
Rendering about.html...
Rendering assets/style.css...
Rendering faq.html...
Rendering index.html...
```

### Создание образа иcпользуя Dockerfile

Для сoздания образа перейдите в директорию с Dockerfile и используйте команду:
```
sudo docker -t <your dockerhub repository name>:<tag> --arg-build SJP_VERSION=<sjp version> -f <Dockerfile name> .
```

#### Примеры команд для определенных тегов

`develop`
```
sudo docker -t malykh/static-jinja-plus:develop -f Dockerfile-ubuntu .
```

`develop-slim`
```
sudo docker -t malykh/static-jinja-plus:develop -f Dockerfile-slim .
```

`0.1.0-ubuntu`
```
sudo docker -t malykh/static-jinja-plus:0.1.0-ubuntu --arg-build SJP_VERSION=0.1.0 -f Dockerfile-ubuntu .
```

`0.1.0-slim`
```
sudo docker -t malykh/static-jinja-plus:0.1.0-slim --arg-build SJP_VERSION=0.1.0 -f Dockerfile-slim .
```

`0.1.1-ubuntu`
```
sudo docker -t malykh/static-jinja-plus:0.1.0-ubuntu --arg-build SJP_VERSION=0.1.1 -f Dockerfile-ubuntu .
```

`0.1.1-slim`
```
sudo docker -t malykh/static-jinja-plus:0.1.1-slim --arg-build SJP_VERSION=0.1.1 -f Dockerfile-slim .
```

`latest`
```
sudo docker -t malykh/static-jinja-plus:latest -f Dockerfile-ubuntu .
```

`slim`
```
sudo docker -t malykh/static-jinja-plus:slim -f Dockerfile-slim .
```

#### Отправка образа на DockerHub
Для отправки образа на DockerHub используйте команду:
```
sudo docker push <your dockerhub repository name>:<tag>
```

Пример отправки образа с тегом `latest`:
```
sudo docker push malykh/static-jinja-plus:latest
```
