FROM python:3.5.10-buster

COPY . /opt/attack-scripts/xss/

RUN apt-get update && apt install python3-pip phantomjs -y
RUN echo "export QT_QPA_PLATFORM=offscreen" >> /etc/environment

RUN pip install --upgrade pip
RUN pip install -r /opt/attack-scripts/xss/requirements.txt