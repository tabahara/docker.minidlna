FROM debian
COPY files/backports.list /etc/apt/sources.list.d
RUN apt-get update && apt-get -t jessie-backports install -y \
minidlna 
ADD files/minidlna.conf /etc/minidlna.conf
ADD files/start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 1900/UDP 
EXPOSE 8200

CMD /start.sh
