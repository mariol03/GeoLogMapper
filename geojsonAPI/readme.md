# GEOJSONAPI
This is a docker image that presents via 3 different endpoints updated geojson data.

The data is sourced from [Natural Earth Data](https://www.naturalearthdata.com). Subsequently, it undergoes processing via the 'org2org' command from GDAL. Finally, the processed data becomes accessible through various endpoints.

There are two dockerfiles one with ubuntu as the base image and the other with alpinelinux as the base image. Both install python3, gunicorn, flask, gdal and standard linux tools. Then it launches gunicorn for creating a HTTP server and serve the different endpoints
