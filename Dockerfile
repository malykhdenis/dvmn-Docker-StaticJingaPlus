FROM malykh/static-jinja-plus:0.1.1-ubuntu
WORKDIR /opt/StaticJinjaPlus
RUN apt update
ENTRYPOINT ["python3", "main.py"]
