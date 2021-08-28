FROM wernight/phantomjs:latest

USER root

COPY . /home/phantomjs/xssmap
RUN chmod +x /home/phantomjs/xssmap/entrypoint.sh
RUN chown -R phantomjs:phantomjs /home/phantomjs

ENTRYPOINT ["/bin/bash"]
CMD ["-c","/home/phantomjs/xssmap/entrypoint.sh"]