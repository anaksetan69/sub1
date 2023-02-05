
FROM python:3.8-slim-buster
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install \
    python3 python3-dev python3-dev python3-pip python3-venv 

RUN apt-get install git curl python3-pip ffmpeg -y
ARG USER=root
USER $USER
RUN python3 -m venv venv
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY start.py start.py
COPY app.json app.json
EXPOSE 5000
RUN chmod +x /app/start.py
ENTRYPOINT ["./start.py"]
