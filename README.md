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




