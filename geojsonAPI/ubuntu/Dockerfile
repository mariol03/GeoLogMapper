FROM ubuntu
RUN apt update
RUN apt install gdal-bin python3 python3-flask python3-requests python3-gunicorn wget unzip --no-install-recommends -y
RUN mkdir /python
COPY ../getgeojson.sh /usr/bin/
WORKDIR /python
CMD [ "gunicorn" , "--bind" , "0.0.0.0:80" , "geojson:app" ]
