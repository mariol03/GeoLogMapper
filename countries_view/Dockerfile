FROM bitnami/minideb:bookworm
RUN install_packages python3 python3-flask python3-folium python3-requests python3-sqlalchemy python3-pandas python3-pymysql gunicorn
RUN mkdir /python
WORKDIR /python
CMD [ "gunicorn" , "-b" , "0.0.0.0" , "mapa:app"]