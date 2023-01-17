FROM python:3.8

WORKDIR /app
COPY main.py .
EXPOSE 8888
SHELL ["/bin/bash", "-c"]
RUN apt update \
    && apt install python3-venv -y \
    && python3 -m venv .venv \
    && source .venv/bin/activate \
    && pip3 install tornado

ENTRYPOINT python3 main.py
