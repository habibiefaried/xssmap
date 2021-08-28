FROM wernight/phantomjs:latest

USER root

RUN apt update && apt install python python-pip python-dev procps net-tools libxml2-dev libxslt1-dev build-essential libffi-dev libssl-dev gcc nano -y
COPY . /home/phantomjs/xssmap
RUN chmod +x /home/phantomjs/xssmap/entrypoint.sh
RUN chown -R phantomjs:phantomjs /home/phantomjs

WORKDIR /home/phantomjs/xssmap
USER phantomjs
RUN pip install -r requirements.txt 
ENTRYPOINT ["/home/phantomjs/xssmap/entrypoint.sh"]