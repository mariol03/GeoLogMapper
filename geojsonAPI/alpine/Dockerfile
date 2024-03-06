FROM alpine
RUN apk update
RUN apk add gdal-tools python3 py3-flask py3-requests py3-gunicorn wget bash unzip
RUN mkdir /python
COPY getgeojson.sh /usr/bin/
WORKDIR /python
CMD [ "gunicorn" , "--bind" , "0.0.0.0:80" , "geojson:app" ]
