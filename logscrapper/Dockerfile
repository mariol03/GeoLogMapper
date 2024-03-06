FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install python3 python3-pip -y
RUN apt install apache2 --no-install-recommends -y
RUN apt install libmariadb3 libmariadb-dev -y
RUN apt install build-essential -y
RUN pip3 install IPy requests mariadb
COPY 000-default.conf /etc/apache2/sites-available/
ENTRYPOINT [ "startcontainer" ]