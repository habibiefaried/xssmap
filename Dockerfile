FROM python:3.5.10-buster

COPY . /opt/attack-scripts/xss/

RUN apt-get update && apt install python3-pip phantomjs nano -y
RUN echo "export QT_QPA_PLATFORM=offscreen" >> /etc/environment

RUN pip install --upgrade pip
RUN pip install -r /opt/attack-scripts/xss/requirements.txt

WORKDIR /opt/attack-scripts/xss/

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "QT_QPA_PLATFORM=offscreen /usr/bin/phantomjs /opt/attack-scripts/xss/phantom-render.js"]